<?php

namespace App\Http\Requests\Questions;

use Illuminate\Foundation\Http\FormRequest;

class questionsByStudentsRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }
    public function rules()
    {
        return [
            'student_id' => 'required',
            'answer1' => 'required',
            'answer2' => 'required',
            'answer3' => 'required',
            'answer4' => 'required',
        ];
    }
}
