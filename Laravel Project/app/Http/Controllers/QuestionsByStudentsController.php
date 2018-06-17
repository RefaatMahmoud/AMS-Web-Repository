<?php

namespace App\Http\Controllers;

use App\Http\Requests\Questions\questionsByStudentsRequest;
use App\Http\Resources\Questions\questionsByStudentsResource;
use App\questionsByStudents;
class QuestionsByStudentsController extends Controller
{
    public function index()
    {
        return response([
            "data"=>questionsByStudentsResource::collection(questionsByStudents::all())
        ],200);
    }

    public function store(questionsByStudentsRequest $request)
    {
        //create obj
        $studentQuestionObj = new questionsByStudents();
        //get requests
        $studentQuestionObj->student_id = $request->student_id;
        $studentQuestionObj->answer1 = $request->answer1;
        $studentQuestionObj->answer2 = $request->answer2;
        $studentQuestionObj->answer3 = $request->answer3;
        $studentQuestionObj->answer4 = $request->answer4;
        //save request
        $studentQuestionObj->save();
        //response
        return response([
            'data' => new questionsByStudentsResource($studentQuestionObj)
        ],201);
    }

    public function show($id)
    {
        return response([
            'data' => new questionsByStudentsResource(questionsByStudents::find($id))
        ],200);
    }
}
