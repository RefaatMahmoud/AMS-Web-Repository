<?php

namespace App\Http\Controllers;

use App\activityType;
use App\Http\Requests\ActivtyType\activityTypeRequest;
use App\Http\Resources\ActivityType\activityTypeResource;
use Illuminate\Http\Request;

class ActivityTypeController extends Controller
{
    public function index()
    {
        //
        return response([
           "data" => activityTypeResource::collection(activityType::all())
        ],200);
    }

    public function store(activityTypeRequest $request)
    {
        //create
        $activityObj = new activityType();
        //set requests
        $activityObj->title = $request->title;
        $activityObj->flag = $request->flag;
        //save
        $activityObj->save();
        //response
        return response([
            "data" => new activityTypeResource($activityObj)
        ],201);
    }

    public function show($id){
        $activityObj = activityType::find($id);
        return response([
            "data" => new activityTypeResource($activityObj)
        ],200);
    }
    public function update(Request $request, activityType $activityType)
    {
        //
    }

    public function destroy(activityType $activityType)
    {
        //
    }
}
