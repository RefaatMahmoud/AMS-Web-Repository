<?php

namespace App\Http\Requests\ActivtyType;

use Illuminate\Foundation\Http\FormRequest;

class activityTypeRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            "title" => "required|string",
            "flag" => "required|boolean"
        ];
    }
}
