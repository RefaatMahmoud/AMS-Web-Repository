<?php

namespace App\Http\Requests\Subject;

use Illuminate\Foundation\Http\FormRequest;

class subjectRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            "subjectName" => "required",
            "totalMark" => "required",
            "duration" => "required",
            "groupNumber" => "required"
        ];
    }
}
