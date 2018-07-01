<?php

namespace App\Http\Controllers;
use App\Http\Requests\ActivtyType\runingActivityRequest;
use App\Http\Resources\ActivityType\runingActivityResource;
use App\RuningActivity;


class RuningActivityController extends Controller
{

    public function index()
    {
        return response([
           "date" => runingActivityResource::collection(RuningActivity::all())
        ],200);
    }

    public function store(runingActivityRequest $request)
    {
        $runningActivityObj = new RuningActivity();
        $runningActivityObj->activity = $request->activity;
        $runningActivityObj->isRuning = $request->isRuning;
        $runningActivityObj->finished = $request->finished;
        $runningActivityObj->started_at = $request->started_at;
        $runningActivityObj->finished_at = $request->finished_at;
        $runningActivityObj->students = $request->students;
        $runningActivityObj->delayTime = $request->delayTime;
        $runningActivityObj->fullDate = $request->fullDate;
        $runningActivityObj->save();
        return response([
            "date" => new runingActivityResource($runningActivityObj)
        ],201);
    }

    public function show($id)
    {
        return response([
            'data' => new runingActivityResource(RuningActivity::find($id))
        ],200);
    }

    public function update(runingActivityRequest $request,$id)
    {
        $runningActivityObj = RuningActivity::find($id);
        $runningActivityObj->update($request->all());
        $runningActivityObj->save();
        return response([
            "date" => new runingActivityResource($runningActivityObj)
        ],200);
    }
}
