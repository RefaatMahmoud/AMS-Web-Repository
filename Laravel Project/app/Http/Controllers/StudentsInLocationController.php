<?php

namespace App\Http\Controllers;
use App\Http\Requests\Users\students_in_LocationRequest;
use App\Http\Resources\Users\students_in_LocationResource;
use App\stduents_in_locations;
use Illuminate\Http\Request;

class StudentsInLocationController extends Controller
{

    public function index()
    {
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

    public function destroy($id)
    {
        $studentLocationObj = stduents_in_locations::find($id);
        $studentLocationObj->delete();
        return response([
            "data" => "deleted successfully"
        ],200);
    }

    public function show($id)
    {
        return response([
            'data' => new students_in_LocationResource(stduents_in_locations::find($id))
        ],200);
    }

    public function update(Request $request , $id)
    {
        $studentLocationObj = stduents_in_locations::find($id);
        $studentLocationObj->update($request->all());
        $studentLocationObj->save();
        return response([
            'data' => new students_in_LocationResource($studentLocationObj)
        ],200);
    }
}
