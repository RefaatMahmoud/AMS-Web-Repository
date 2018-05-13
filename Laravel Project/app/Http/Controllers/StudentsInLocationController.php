<?php

namespace App\Http\Controllers;

use App\Http\Requests\Users\students_in_LocationRequest;
use App\Http\Resources\Users\students_in_LocationResource;
use App\students_in_Location;
use Illuminate\Http\Request;

class StudentsInLocationController extends Controller
{

    public function index()
    {
        return response([
            "students_in_Location" => students_in_LocationResource::collection(students_in_Location::all())
        ],200);
    }
    public function store(students_in_LocationRequest $request)
    {
        //create obj
        $studentLocationObj = new students_in_Location();
        //set request
        $studentLocationObj->name = $request->name;
        //save
        $studentLocationObj->save();
        //response
        return response([
            "students_in_Location" => new students_in_LocationResource($studentLocationObj)
        ],201);
    }

    public function show(students_in_Location $students_in_Location)
    {

    }

    public function update(Request $request, students_in_Location $students_in_Location)
    {

    }

    public function destroy($id)
    {
        $studentLocationObj = students_in_Location::find($id);
        $studentLocationObj->delete();
        return response([
            "students_in_Location" => "deleted successfully"
        ],200);
    }
}
