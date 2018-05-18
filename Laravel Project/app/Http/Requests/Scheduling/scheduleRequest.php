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
            "day" => "required",
            "Location" => "required",
            "instructorName" => "required",
            "subjectName" => "required",
            "totalMark" => "required",
            "startTime" => "required",
            "endTime" => "required",
            "type" => "required",
            "groupNumber" => 'required'
        ];
    }
}
