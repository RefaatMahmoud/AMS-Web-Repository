<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class groupNumberController extends Controller
{
    public function FetchSubjects(Request $request , $id)
    {
        //fetch Datd
        $data = DB::table("subjects")->where("groupNumber", "=", $request->id)->get();
        //response
        return response([
            "data" => $data
        ],200);
    }
    public function FetchSchedule(Request $request , $id)
    {
        //fetch Datd
        $data = DB::table("schedules")->where("groupNumber", "=", $request->id)->get();
        //response
        return response([
            "data" => $data
        ],200);
    }
}
