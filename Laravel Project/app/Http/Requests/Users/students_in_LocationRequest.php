<?php

namespace App\Http\Requests\Users;

use Illuminate\Foundation\Http\FormRequest;

class students_in_LocationRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            "name" => "required|string",
            "status" => "required|boolean",
            "level" => "required|string",
            "subjectName" => "required|string",
            "activityType" => "required|string"
        ];
    }
}
