<?php

namespace App\Http\Controllers;

use App\Http\Requests\Questions\setQuestionsByAdminRequest;
use App\Http\Resources\Questions\setQuestionsByAdminResources;
use App\setQuestionsByAdmin;

class SetQuestionsByAdminController extends Controller
{

    public function index()
    {
        return response([
            "data"=>setQuestionsByAdminResources::collection(setQuestionsByAdmin::all())
        ],200);
    }

    public function store(setQuestionsByAdminRequest $request)
    {
        //create question object
        $questionObj = new setQuestionsByAdmin();
        //Get requests
        $questionObj->question = $request->question;
        $questionObj->option1 = $request->option1;
        $questionObj->option2 = $request->option2;
        $questionObj->option3 = $request->option3;
        $questionObj->option4 = $request->option4;
        //save questionObj
        $questionObj->save();
        //response
        return response([
            'data' => new setQuestionsByAdminResources($questionObj)
        ],201);
    }

    public function show($id)
    {
        $questionObj = setQuestionsByAdmin::find($id);
        return response([
            'data' => new setQuestionsByAdminResources($questionObj)
        ],200);
    }

    public function update(setQuestionsByAdminRequest $request, $id)
    {
        $questionObj = setQuestionsByAdmin::find($id);
        //Get update request
        $questionObj->question = $request->question;
        $questionObj->option1 = $request->option1;
        $questionObj->option2 = $request->option2;
        $questionObj->option3 = $request->option3;
        $questionObj->option4 = $request->option4;
        //save update request
        $questionObj->save();
        return response([
            'data' => new setQuestionsByAdminResources($questionObj)
        ],200);
    }

    public function destroy($id)
    {
        $questionObj = setQuestionsByAdmin::find($id);
        $questionObj->delete();
        return response([
            "data" => "deleted successfully"
        ],200);
    }


}
