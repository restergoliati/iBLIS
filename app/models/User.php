<?php

use Illuminate\Auth\UserInterface;
use Zizaco\Entrust\HasRole;
use Illuminate\Auth\Reminders\RemindableInterface;
use Illuminate\Database\Eloquent\SoftDeletingTrait;

class User extends Eloquent implements UserInterface, RemindableInterface {

	Use HasRole;

	const EXTERNAL_SYSTEM_USER = 2;
	const MALE = 0;
	const FEMALE = 1;
	/**
	 * Enabling soft deletes on the user table.
	 *
	 */
	use SoftDeletingTrait;
	protected $dates = ['deleted_at'];

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'users';

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */
	protected $hidden = array('password');

	/**
	 * Get the unique identifier for the user.
	 *
	 * @return mixed
	 */
	public function getAuthIdentifier()
	{
		return $this->getKey();
	}

	/**
	 * Get the password for the user.
	 *
	 * @return string
	 */
	public function getAuthPassword()
	{
		return $this->password;
	}

	/**
	 * Get the token value for the "remember me" session.
	 *
	 * @return string
	 */
	public function getRememberToken()
	{
		return $this->remember_token;
	}

	/**
	 * Set the token value for the "remember me" session.
	 *
	 * @return void
	 */
	public function setRememberToken($value)
	{
		$this->remember_token = $value;
	}

	/**
	 * Get the column name for the "remember me" token.
	 *
	 * @return string
	 */
	public function getRememberTokenName()
	{
		return "remember_token";
	}

	/**
	 * Get the e-mail address where password reminders are sent.
	 *
	 * @return string
	 */
	public function getReminderEmail()
	{
		return $this->email;
	}

	/**
	 * Get the admin user currently the first user
	 *
	 * @return User model
	 */
	public static function getAdminUser()
	{
		return User::find(1);
	}

	/**
	 * Get the summary user statistics
	 *
	 * @return db resultset
	 */
	public static function getSummaryUserStatistics($from, $to, $userID=0)
	{

		$params = array($from, $to, $from, $to, $from, $to, $from, $to, $from, $to);

		$users = array();
		$data = array();

		if ($userID == 0) {
			$users = User::lists('id');
		} else {
			$users[] = $userID;
		}
		
		foreach ($users as $user) {
			$userData = DB::select("SELECT u.name, u.designation, 
						count(DISTINCT IF(u.id=t.created_by AND (t.time_created BETWEEN ? AND ?),t.id,NULL)) AS created, 
						count(DISTINCT IF(u.id=t.tested_by AND (t.time_completed BETWEEN ? AND ?),t.id,NULL)) AS tested, 
						count(DISTINCT IF(u.id=t.verified_by AND (t.time_verified BETWEEN ? AND ?),t.id,NULL)) AS verified, 
						count(DISTINCT IF(u.id=s.accepted_by AND (s.time_accepted BETWEEN ? AND ?),t.id,NULL)) AS specimen_registered, 
						count(DISTINCT IF(u.id=s.rejected_by AND (s.time_rejected BETWEEN ? AND ?),t.id,NULL)) AS specimen_rejected 
					FROM tests AS t 
						LEFT JOIN specimens AS s ON t.specimen_id = s.id 
						LEFT JOIN visits AS v ON t.visit_id = v.id 
						INNER JOIN patients AS p ON v.patient_id = p.id 
						CROSS JOIN users AS u 
						WHERE u.id = $user
						GROUP BY u.id
						ORDER BY u.name",
						$params
					);
			$data = array_merge($data, $userData);
		}

		return $data;
	}

	/**
	 * Get the patients registered by a user
	 *
	 * @return db resultset
	 */
	public static function getPatientsRegistered($from, $to, $userID=0)
	{

		$patients = Patient::select(['id'])->whereBetween('created_at', [$from, $to]);
		
		if($userID > 0)
			$patients = $patients->where('created_by', '=', $userID);

		return $patients->get();
	}

	/**
	 * Get the specimen registered by a user
	 *
	 * @return db resultset
	 */
	public static function getSpecimensRegistered($from, $to, $userID=0)
	{

		$specimens = Specimen::select(['id'])->whereBetween('time_accepted', [$from, $to]);
		
		if($userID > 0)
			$specimens = $specimens->where('accepted_by', '=', $userID);

		return $specimens->get();
	}

	/**
	 * Get the tests registered by a user
	 *
	 * @return db resultset
	 */
	public static function getTestsRegistered($from, $to, $userID=0)
	{

		$tests = Test::select(['id'])->whereBetween('time_completed', [$from, $to]);
		
		if($userID > 0)
			$tests = $tests->where('created_by', '=', $userID);

		return $tests->get();
	}

	/**
	 * Get the tests performed by a user
	 *
	 * @return db resultset
	 */
	public static function getTestsPerformed($from, $to, $userID=0)
	{

		$tests = Test::select(['id'])->whereBetween('time_completed', [$from, $to]);
		
		if($userID > 0)
			$tests = $tests->where('tested_by', '=', $userID);

		return $tests->get();
	}

	public function getLabSections(){

		//return DB::table("user_testcategory")->where("user_id", "=", $this->id)->get();
		return $this->belongsToMany('TestCategory', 'user_testcategory');
	}

}