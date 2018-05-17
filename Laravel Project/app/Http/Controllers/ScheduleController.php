<?php

namespace App\Http\Controllers;

use App\Http\Requests\Scheduling\scheduleRequest;
use App\Http\Resources\Scheduling\scheduleResource;
use App\schedule;
class ScheduleController extends Controller
{
    public function index()
    {
        return response([
            "schedule" => scheduleResource::collection(schedule::all())
        ],200);
    }

    public function store(scheduleRequest $request)
    {
        //create object
        $scheduleObj = new schedule();
        //set requests
        $scheduleObj->day = $request->day;
        $scheduleObj->Location = $request->Location;
        $scheduleObj->instructorName = $request->instructorName;
        $scheduleObj->subjectName = $request->subjectName;
        $scheduleObj->startTime = $request->startTime;
        $scheduleObj->endTime = $request->endTime;
        $scheduleObj->groupNumber = $request->groupNumber;
        $scheduleObj->totalMark = $request->totalMark;
        $scheduleObj->type = $request->type;
        //save
        $scheduleObj->save();
        //response
        return response([
            "schedule" => new scheduleResource($scheduleObj)
        ],201);
    }

    public function update(scheduleRequest $request, $id)
    {
        $scheduleObj = schedule::find($id);
        $scheduleObj->update($request->all());
        //save
        $scheduleObj->save();
        //response
        return response([
            "schedule" => new scheduleResource($scheduleObj)
        ],200);
    }

    public function destroy($id)
    {
        $scheduleObj = schedule::find($id);
        $scheduleObj->delete();
        return response([
            "schedule" => "deleted successfully"
        ],200);
    }
}
