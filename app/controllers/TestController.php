<?php

use Illuminate\Database\QueryException;

/**
 * Contains test resources  
 * 
 */
class TestController extends \BaseController {

	/**
	 * Display a listing of Tests. Factors in filter parameters
	 * The search string may match: patient_number, patient name, test type name, specimen ID or visit ID
	 *
	 * @return Response
	 */
	public function index()
	{

		$fromRedirect = Session::pull('fromRedirect');

		if($fromRedirect){

			$input = Session::get('TESTS_FILTER_INPUT');
			
		}else{

			$input = Input::except('_token');
		}

		$searchString = isset($input['search'])?$input['search']:'';
		$testStatusId = isset($input['test_status'])?$input['test_status']:'';
		$dateFrom = isset($input['date_from'])?$input['date_from']:'';
		$dateTo = isset($input['date_to'])?$input['date_to']:'';

		// Search Conditions
		$location = TestCategory::where("id", '=', Session::get('location_id'))->first();

		if($searchString||$testStatusId||$dateFrom||$dateTo){

			//$tests = Test::search($searchString, $testStatusId, $dateFrom, $dateTo);
			if (str_is('*RECEPTION*', strtoupper($location))) {
				$tests = Test::search($searchString, $testStatusId, $dateFrom, $dateTo);
			}else{
				$tests = Test::search($searchString, $testStatusId, $dateFrom, $dateTo, Session::get('location_id'));
			}

			if (count($tests) == 0) {
			 	Session::flash('message', trans('messages.empty-search'));
			}
		}
		else
		{
			// List all the active tests
			if (str_is('*RECEPTION*', strtoupper($location))) {
				$tests = Test::orderBy('time_created', 'DESC');
			}else {
				$tests = DB::table('tests')
					->join('test_types', 'test_types.id', '=', 'tests.test_type_id')
					->select('tests.*')
					->where('test_types.test_category_id', '=', Session::get("location_id"))
					->orderBy('time_created', 'DESC');
			}
		}

		// Create Test Statuses array. Include a first entry for ALL
		$statuses = array('all')+TestStatus::all()->lists('name','id');

		foreach ($statuses as $key => $value) {
			$statuses[$key] = trans("messages.$value");
		}

		// Pagination
		$tests = $tests->paginate(Config::get('kblis.page-items'))->appends($input);

		$testIds = $tests->lists('id');

		//Make sure that if first or last element is a panel sub test,
		// pull all tests in that panel and append to pagination results- Baobab

		if ($tests->last() && $tests->last()->panel_id){
			$missingPanelTests = Test::where('panel_id', $tests->last()->panel_id)
									->whereNotIn('id', $testIds);

			$testIds = array_merge($testIds, $missingPanelTests->lists('id'));
		}

		if ($tests->first() && $tests->first()->panel_id){

			$missingPanelTests = Test::where('panel_id', $tests->first()->panel_id)
				->whereNotIn('id', $testIds);

			$testIds = array_merge($missingPanelTests->lists('id'), $testIds);
		}

		// Load the view and pass it the tests
		return View::make('test.index')
					->with('testSet', $tests)
					->with('testIds', $testIds)
					->with('testStatus', $statuses)
					->withInput($input);
	}

	/**
	 * Recieve a Test from an external system
	 *
	 * @param
	 * @return Response
	 */
	public function receive($id)
	{
		$test = Test::find($id);
		$test->test_status_id = Test::PENDING;
		$test->time_created = date('Y-m-d H:i:s');
		$test->created_by = Auth::user()->id;
		$test->save();

		if($test->panel_id){
			Session::set('activeTest', array($test->id));
		}

		return $id;
	}

	/**
	 * Display a form for creating a new Test.
	 *
	 * @return Response
	 */
	public function create($patientID = 0)
	{
		if ($patientID == 0) {
			$patientID = Input::get('patient_id');
		}

		if($patientID == 0){
			$patientID = Session::get('patient_id');
		}else{
			Session::set('patient_id', $patientID);
		}

		$location = TestCategory::where("id", '=', Session::get('location_id'))->first();

		if (str_is('*RECEPTION*', strtoupper($location))){
			$testTypes = TestType::where('orderable_test', 1)
				->orderBy('name', 'asc')->get();
		}else {
			$testTypes = TestType::where('orderable_test', 1)
				->where("test_category_id", '=', Session::get('location_id'))
				->orderBy('name', 'asc')->get();
		}

		$visit_types = VisitType::lists("name", "id");
		$patient = Patient::find($patientID);
		$specimen_types = SpecimenType::all()->lists('name', 'id');

		//Load Test Create View
		return View::make('test.create')
					->with('testtypes', $testTypes)
					->with('visittypes', $visit_types)
					->with('patient', $patient)
					->with('specimen_types', $specimen_types);
	}

	public function append_test($testId = 0)
	{
		$test = Test::find($testId);
		$tid = $test->specimen->specimen_type_id;
		$testTypes = DB::table('test_types')
			->join("testtype_specimentypes", "testtype_specimentypes.test_type_id", '=', "test_types.id")
			->select("test_types.*")
			->where('orderable_test', 1)
			->where('testtype_specimentypes.specimen_type_id', $tid)
			->where("test_category_id", '=', Session::get('location_id'))
			->orderBy('name', 'asc')->get();

		$patient = $test->visit->patient;
		$specimen_type =  $test->specimen->specimen_type;

		//Load Test Create View
		return View::make('test.append')
			->with('testtypes', $testTypes)
			->with('test', $test)
			->with('visittype', $test->visit)
			->with('patient', $patient)
			->with('specimentype',$specimen_type);
	}

	/**
	 * Save a new Test.
	 *
	 * @return Response
	 */
	public function saveNewTest()
	{
		//Create New Test
		$rules = array(
			'visit_type' => 'required',
			'ward' => 'required',
			'physician' => 'required',
			'testtypes' => 'required',
		);
		$validator = Validator::make(Input::all(), $rules);

		// process the login
		if ($validator->fails()) {
			return Redirect::route('test.create', 
				array(Input::get('patient_id')))->withInput()->withErrors($validator);
		} else {

			$visitType = ['Out-patient','In-patient'];
			$activeTest = array();

			/*
			* - Create a visit
			* - Fields required: visit_type, patient_id
			*/
			$visit = new Visit;
			$visit->patient_id = Input::get('patient_id');
			$visit->visit_type = VisitType::find(Input::get('visit_type'))->name;
			$visit->ward_or_location = Input::get('ward');
			$visit->save();

			/*
			* - Create tests requested
			* - Fields required: visit_id, test_type_id, specimen_id, test_status_id, created_by, requested_by
			*/
			$testTypes = Input::get('testtypes');
			if(is_array($testTypes) && count($testTypes) > 0){

				// Create Specimen - specimen_type_id, accepted_by, referred_from, referred_to
				$specimen = new Specimen;
				$specimen->specimen_type_id = Input::get('specimen_type');
				$specimen->accepted_by = Auth::user()->id;
				$specimen->accession_number = self::assignAccessionNumber();
				$specimen->save();

				foreach ($testTypes as $value) {
					$testTypeID = (int)$value;

					if ($testTypeID == 0){
						$panelType = PanelType::where('name', '=', $value)->first()->id;

						$panelTests = DB::select("SELECT test_type_id FROM panels
											WHERE panel_type_id = $panelType"
										);

						if(count($panelTests) > 0) {

							$panel = new TestPanel;
							$panel->panel_type_id = $panelType;
							$panel->save();

							foreach ($panelTests AS $tType) {

								$duplicateCheck = DB::select("SELECT * FROM tests
											WHERE test_type_id = ".$tType->test_type_id
									." AND specimen_id = ".$specimen->id);

								if(count($duplicateCheck) == 0) {
									$test = new Test;
									$test->visit_id = $visit->id;
									$test->test_type_id = $tType->test_type_id;
									$test->specimen_id = $specimen->id;
									$test->test_status_id = Test::PENDING;
									$test->created_by = Auth::user()->id;
									$test->panel_id = $panel->id;
									$test->requested_by = Input::get('physician');
									$test->save();

									$activeTest[] = $test->id;
								}
							}
						}

					}else {

						$duplicateCheck = DB::select("SELECT * FROM tests
											WHERE test_type_id = $testTypeID AND specimen_id = ".$specimen->id);

						if(count($duplicateCheck) == 0) {
							$test = new Test;
							$test->visit_id = $visit->id;
							$test->test_type_id = $testTypeID;
							$test->specimen_id = $specimen->id;
							$test->test_status_id = Test::PENDING;
							$test->created_by = Auth::user()->id;
							$test->requested_by = Input::get('physician');
							$test->save();

							$activeTest[] = $test->id;
						}
					}
				}
			}

			$url = Session::get('SOURCE_URL');
			
			return Redirect::to($url)->with('message', 'messages.success-creating-test')
					->with('activeTest', $activeTest);
		}
	}

	public function assignAccessionNumber(){
		# Generate the next accession number for specimen registration

		$max_acc_num = null;
		$return_value = null;
		$sentinel = 999999;

		$code = Config::get('kblis.facility-code');

		$record = DB::select("SELECT * FROM specimens  WHERE accession_number IS NOT NULL ORDER BY id DESC LIMIT 1");

		if(COUNT($record) > 0){
			$max_acc_num = (int)filter_var($record[0]->accession_number, FILTER_SANITIZE_NUMBER_INT);
			if ($max_acc_num < $sentinel){
				$max_acc_num += 1;
			}else{
				$max_acc_num = 1;
			}
		}else{
			$max_acc_num = 1;
		}
		$max_acc_num = str_pad($max_acc_num, 6, '0', STR_PAD_LEFT);
		$return_value = $code.$max_acc_num;
		return $return_value;
	}

	/**
	 * Display Rejection page 
	 *
	 * @param
	 * @return
	 */
	public function reject($specimenID)
	{
		$specimen = Specimen::find($specimenID);
		$rejectionReason = RejectionReason::all();
		return View::make('test.reject')->with('specimen', $specimen)
						->with('rejectionReason', $rejectionReason);
	}

	/**
	 * Executes Rejection
	 *
	 * @param
	 * @return
	 */
	public function rejectAction()
	{
		//Reject justifying why.
		$rules = array(
			'rejectionReason' => 'required|non_zero_key',
			'reject_explained_to' => 'required',
		);
		$validator = Validator::make(Input::all(), $rules);

		if ($validator->fails()) {
			return Redirect::route('test.reject', array(Input::get('specimen_id')))
				->withInput()
				->withErrors($validator);
		} else {
			$specimen = Specimen::find(Input::get('specimen_id'));
			$specimen->rejection_reason_id = Input::get('rejectionReason');
			$specimen->specimen_status_id = Specimen::REJECTED;
			$specimen->rejected_by = Auth::user()->id;
			$specimen->time_rejected = date('Y-m-d H:i:s');
			$specimen->reject_explained_to = Input::get('reject_explained_to');
			$specimen->save();
			
			$url = Session::get('SOURCE_URL');
			
			return Redirect::to($url)->with('message', 'messages.success-rejecting-specimen')
						->with('activeTest', array($specimen->test->id));
		}
	}

	/**
	 * Accept a Test's Specimen
	 *
	 * @param
	 * @return
	 */
	public function accept()
	{
		$specimen = Specimen::find(Input::get('id'));
		$specimen->specimen_status_id = Specimen::ACCEPTED;
		$specimen->accepted_by = Auth::user()->id;
		$specimen->time_accepted = date('Y-m-d H:i:s');
		$specimen->save();

		return $specimen->specimen_status_id;
	}

	/**
	 * Display Change specimenType form fragment to be loaded in a modal via AJAX
	 *
	 * @param
	 * @return
	 */
	public function changeSpecimenType()
	{
		$test = Test::find(Input::get('id'));
		return View::make('test.changeSpecimenType')->with('test', $test);
	}

	/**
	 * Update a Test's SpecimenType
	 *
	 * @param
	 * @return
	 */
	public function updateSpecimenType()
	{
		$specimen = Specimen::find(Input::get('specimen_id'));
		$specimen->specimen_type_id = Input::get('specimen_type');
		$specimen->save();

		return Redirect::route('test.viewDetails', array($specimen->test->id));
	}

/**
	 * Starts Test
	 *
	 * @param
	 * @return
	 */
	public function start()
	{
		$test = Test::find(Input::get('id'));
		$test->test_status_id = Test::STARTED;
		$test->time_started = date('Y-m-d H:i:s');
		$test->save();
		Session::set('activeTest', array($test->id));
		return $test->test_status_id;
	}

	/**
	 * Display Result Entry page
	 *
	 * @param
	 * @return
	 */
	public function enterResults($testID)
	{
		$test = Test::find($testID);
		if($test->testType->instruments->count() > 0){
			//Delete the celtac dump file
			//TO DO: Clean up and use configs + Handle failure
			$EMPTY_FILE_URL = "http://192.168.1.88/celtac/emptyfile.php";
			@file_get_contents($EMPTY_FILE_URL);
		}

		$drugs = Drug::orderBy("name")->lists('name', 'id');

		return View::make('test.enterResults')->with('test', $test)
			->with('all_drugs', $drugs);
	}

	/**
	 * Returns test result intepretation
	 * @param
	 * @return
	 */
	public function getResultInterpretation()
	{
		$result = array();
		//save if it is available
		
		if (Input::get('age')) {
			$result['birthdate'] = Input::get('age');
			$result['gender'] = Input::get('gender');
		}
		$result['measureid'] = Input::get('measureid');
		$result['measurevalue'] = Input::get('measurevalue');

		$measure = new Measure;
		return $measure->getResultInterpretation($result);
	}

	/**
	 * Saves Test Results
	 *
	 * @param $testID to save
	 * @return view
	 */
	public function saveResults($testID)
	{
		$test = Test::find($testID);
		$test->test_status_id = Test::COMPLETED;
		$test->interpretation = Input::get('interpretation');
		$test->tested_by = Auth::user()->id;
		if(empty($test->time_completed) || $test->time_completed == null) {
			$test->time_completed = date('Y-m-d H:i:s');
		}
		$test->save();
		
		foreach ($test->testType->measures as $measure) {
			$testResult = TestResult::firstOrCreate(array('test_id' => $testID, 'measure_id' => $measure->id));
			$testResult->result = Input::get('m_'.$measure->id);
			$testResult->save();
		}

		//Fire of entry saved/edited event
		Event::fire('test.saved', array($testID));

		$input = Session::get('TESTS_FILTER_INPUT');
		Session::put('fromRedirect', 'true');

		// Get page
		$url = Session::get('SOURCE_URL');
		$urlParts = explode('&', $url);
		if(isset($urlParts['page'])){
			$pageParts = explode('=', $urlParts['page']);
			$input['page'] = $pageParts[1];
		}

		if(count($test->susceptibility)>0){
			//delete all susceptibility values if result has no culture worksheet
		}
		// redirect
		return Redirect::action('TestController@index')
					->with('message', trans('messages.success-saving-results'))
					->with('activeTest', array($test->id))
					->withInput($input);
	}

	/**
	 * Display Edit page
	 *
	 * @param
	 * @return
	 */
	public function edit($testID)
	{
		$test = Test::find($testID);

		$drugs = Drug::orderBy("name")->lists('name', 'id');

		return View::make('test.edit')->with('test', $test)->with('all_drugs', $drugs);
	}

	/**
	 * Display Test Details
	 *
	 * @param
	 * @return
	 */
	public function viewDetails($testID)
	{
		return View::make('test.viewDetails')->with('test', Test::find($testID));
	}

	/**
	 * Verify Test
	 *
	 * @param
	 * @return
	 */
	public function verify($testID)
	{

		$test = Test::find($testID);

		if(!$test->panel_id) {
			$test->test_status_id = Test::VERIFIED;
			$test->time_verified = date('Y-m-d H:i:s');
			$test->verified_by = Auth::user()->id;
			$test->save();
			$testIds = array($testID);
		}else{

			Test::where('panel_id', $test->panel_id)
					->update(
						array(
							'test_status_id' => Test::VERIFIED,
							'time_verified' => date('Y-m-d H:i:s'),
							'verified_by' => Auth::user()->id
							)
					);
			$testIds = Test::where('panel_id', $test->panel_id)->lists('id');

		}

		//Fire of entry verified event
		foreach($testIds As $id) {
			Event::fire('test.verified', array($id));
		}

		return View::make('test.viewDetails')->with('test', $test)->with('hideVerifyButton', true);
	}

	/**
	 * Refer the test
	 *
	 * @param specimenId
	 * @return View
	 */
	public function showRefer($specimenId)
	{
		$specimen = Specimen::find($specimenId);
		$facilities = Facility::all();
		//Referral facilities
		return View::make('test.refer')
			->with('specimen', $specimen)
			->with('facilities', $facilities);

	}

	/**
	 * Refer action
	 *
	 * @return View
	 */
	public function referAction()
	{
		//Validate
		$rules = array(
			'referral-status' => 'required',
			'facility_id' => 'required|non_zero_key',
			'person',
			'contacts'
			);
		$validator = Validator::make(Input::all(), $rules);
		$specimenId = Input::get('specimen_id');

		if ($validator->fails())
		{
			return Redirect::route('test.refer', array($specimenId))-> withInput()->withErrors($validator);
		}

		//Insert into referral table
		$referral = new Referral();
		$referral->status = Input::get('referral-status');
		$referral->facility_id = Input::get('facility_id');
		$referral->person = Input::get('person');
		$referral->contacts = Input::get('contacts');
		$referral->user_id = Auth::user()->id;

		//Update specimen referral status
		$specimen = Specimen::find($specimenId);

		DB::transaction(function() use ($referral, $specimen) {
			$referral->save();
			$specimen->referral_id = $referral->id;
			$specimen->save();
		});

		//Start test
		Input::merge(array('id' => $specimen->test->id)); //Add the testID to the Input
		$this->start();

		//Return view
		$url = Session::get('SOURCE_URL');
		
		return Redirect::to($url)->with('message', trans('messages.specimen-successful-refer'))
					->with('activeTest', array($specimen->test->id));
	}
	/**
	 * Culture worksheet for Test
	 *
	 * @param
	 * @return
	 */
	public function culture()
	{
		$test = Test::find(Input::get('testID'));
		$test->test_status_id = Test::VERIFIED;
		$test->time_verified = date('Y-m-d H:i:s');
		$test->verified_by = Auth::user()->id;
		$test->save();

		//Fire of entry verified event
		Event::fire('test.verified', array($testID));

		return View::make('test.viewDetails')->with('test', $test);
	}
}