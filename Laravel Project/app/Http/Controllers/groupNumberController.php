<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class groupNumberController extends Controller
{
    public function index(Request $request , $id)
    {
        //fetch Datd
        $data = DB::table("subjects")->where("groupNumber", "=", $request->id)->get();
        //response
        return response([
            "data" => $data
        ],200);
    }
}
