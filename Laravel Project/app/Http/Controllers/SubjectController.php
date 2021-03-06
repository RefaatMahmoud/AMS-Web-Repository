<?php

namespace App\Http\Controllers;


use App\Http\Requests\Subject\subjectRequest;
use App\Http\Resources\Subject\subjectResource;
use App\subject;

class SubjectController extends Controller
{
    public function index()
    {
        return response([
            "data" => subjectResource::collection(subject::all())
        ],200);
    }

    public function store(subjectRequest $request)
    {
        //create
        $subjectObj = new subject();
        //set requests
        $subjectObj->subjectName = $request->subjectName;
        $subjectObj->duration = $request->duration;
        $subjectObj->totalMark = $request->totalMark;
        $subjectObj->groupNumber = $request->groupNumber;
        //save
        $subjectObj->save();
        //response
        return response([
            "data" => new subjectResource($subjectObj)
        ],200);
    }

    public function show($id){
        $subjectObj = subject::find($id);
        return response([
            "data" => new subjectResource($subjectObj)
        ],200);
    }
    public function update(subjectRequest $request, $id)
    {
        $subjectObj = subject::find($id);
        $subjectObj->update($request->all());
        //save
        $subjectObj->save();
        //response
        return response([
            "data" => new subjectResource($subjectObj)
        ],200);
    }

    public function destroy($id)
    {
        $subjectObj = subject::find($id);
        $subjectObj->delete();
        return response([
            "data" => "deleted successfully"
        ],200);
    }
}
