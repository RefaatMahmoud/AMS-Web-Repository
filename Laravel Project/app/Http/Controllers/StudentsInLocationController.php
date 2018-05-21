<?php

namespace App\Http\Controllers;
use App\Http\Requests\Users\students_in_LocationRequest;
use App\Http\Resources\Users\students_in_LocationResource;
use App\stduents_in_locations;

class StudentsInLocationController extends Controller
{

    public function index()
    {
        return response([
            "students_in_Location" => students_in_LocationResource::collection(stduents_in_locations::all())
        ],200);
    }
    public function store(students_in_LocationRequest $request)
    {
        //create obj
        $studentLocationObj = new stduents_in_locations();
        //set request
        $studentLocationObj->name = $request->name;
        $studentLocationObj->status = $request->status;
        //save
        $studentLocationObj->save();
        //response
        return response([
            "students_in_Location" => new students_in_LocationResource($studentLocationObj)
        ],201);
    }

    public function destroy($id)
    {
        $studentLocationObj = stduents_in_locations::find($id);
        $studentLocationObj->delete();
        return response([
            "students_in_Location" => "deleted successfully"
        ],200);
    }
}
