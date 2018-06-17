<?php

namespace App\Http\Controllers;

use App\Http\Requests\Users\students_in_LocationRequest;
use App\Http\Resources\Users\students_in_LocationResource;
use App\stduents_in_locations;
use Illuminate\Http\Request;

class students_in_locations_V2 extends Controller
{
    public function index(){
        return response([
           "data" => students_in_LocationResource::collection(stduents_in_locations::all())
        ],200);
    }

    public function store(students_in_LocationRequest $request)
    {
        //create obj
        $studentLocationObj = new stduents_in_locations();
        //set request
        $studentLocationObj->name = $request->name;
        $studentLocationObj->status = $request->status;
        $studentLocationObj->level = $request->level;
        $studentLocationObj->subjectName = $request->subjectName;
        $studentLocationObj->activityType = $request->activityType;
        //save
        $studentLocationObj->save();
        //response
        return response([
            "data" => new students_in_LocationResource($studentLocationObj)
        ],201);
    }

    public function update(Request $request)
    {
        $studentLocationObj = stduents_in_locations::find($request->id);
        $studentLocationObj->update($request->all());
        $studentLocationObj->save();
        return response([
            'data' => new students_in_LocationResource($studentLocationObj)
        ],200);

    }
}
