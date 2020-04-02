<?php

class LabTestService {
    protected static function createTest($visit, $user, $test_type, $specimen, $status, $panel, $physician)
    {
        $test = new Test;
        $test->visit_id = $visit;
        $test->test_type_id = $test_type;
        $test->specimen_id = $specimen;
        $test->test_status_id = $status;
        $test->created_by =  $user;
        $test->panel_id = $panel;
        $test->requested_by = $physician;
        $test->save();
        return $test;
    }

    protected static function getPanelType($test_type)
    {
        return PanelType::where('name', '=', $test_type)->first()->id;
    }

    protected static function isTestDuplicate($test_type, $specimen)
    {
        $duplicateCheck = DB::select("SELECT * FROM tests WHERE test_type_id = ".$test_type." AND specimen_id = ".$specimen);
        return count($duplicateCheck) > 0;
    }

    protected static function getPanelTests($panelType)
    {
        return DB::select("SELECT test_type_id FROM panels WHERE panel_type_id = $panelType");
    }

    protected static function createPanel($panel_type)
    {
        $panel = new TestPanel;
        $panel->panel_type_id = $panel_type;
        $panel->save();
        return $panel;
    }
}