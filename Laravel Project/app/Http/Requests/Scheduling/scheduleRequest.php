<?php

namespace App\Http\Requests\Scheduling;

use Illuminate\Foundation\Http\FormRequest;

class scheduleRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }
    public function rules()
    {
        return [
            "day" => "required|string",
            "Location" => "required|string",
            "instructorName" => "required|string",
            "subjectName" => "required|string",
            "totalMark" => "required|string",
            "startTime" => "required|string",
            "endTime" => "required|string",
            "type" => "required|string",
            "groupNumber" => 'required|string'
        ];
    }
}
