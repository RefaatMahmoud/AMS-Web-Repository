<?php

namespace App\Http\Controllers;

use App\Http\Requests\Users\StudentRequest;
use App\Http\Resources\Users\StudentsResource;
use App\StudentModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class StudentModelController extends Controller
{

    public function index()
    {
        return StudentsResource::collection(StudentModel::all());
    }

    public function store(StudentRequest $request)
    {
        //create
        $studentObj = new StudentModel();
        $studentObj->name = $request->name ;
        $studentObj->username = $request->username;
        $studentObj->password = Hash::make($request->password);
        $studentObj->email = $request->email;
        $studentObj->level = $request->level;
        $studentObj->telephone = $request->telephone;
        //save
        $studentObj->save();
        //response
        return response([
            'data' => new StudentsResource($studentObj)
        ],201);


    }
    public function show(StudentModel $studentModel)
    {
        //return $studentModel;
       //return new StudentsResource($studentModel);
        //return new StudentsResource($studentModel);
//        return response([
//            'data' => new StudentsResource(StudentModel::find($studentModel->id))
//        ],201);
    }

    public function update(StudentRequest $request, StudentModel $studentModel)
    {
        //

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\StudentModel  $studentModel
     * @return \Illuminate\Http\Response
     */
    public function destroy(StudentModel $studentModel)
    {
        //
    }
}
