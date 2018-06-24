<?php

namespace App\Http\Controllers;

use App\Http\Resources\Users\students_in_LocationResource;
use Illuminate\Http\Request;
use DB;
class students_in_same_locations_and_online extends Controller
{
    public function index($id)
    {
       $data = DB::table('stduents_in_locations')->where('level','=',$id)->where('status','=',1)->get();
       return response([
         "data" => new students_in_LocationResource($data)
       ]);
    }
}
