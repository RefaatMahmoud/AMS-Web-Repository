<?php

namespace App\Http\Requests\Questions;

use Illuminate\Foundation\Http\FormRequest;

class setQuestionsByAdminRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            "question" => "required",
            "option1" => "required",
            "option2" => "required",
            "option3" => "required",
            "option4" => "required",
            "option5" => "required",
        ];
    }
}
