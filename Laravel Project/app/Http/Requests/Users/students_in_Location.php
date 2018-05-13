<?php

namespace App\Http\Requests\Users;
use Illuminate\Foundation\Http\FormRequest;

class students_in_Location extends FormRequest
{
    public function authorize()
    {
        return true;
    }
    public function rules()
    {
        return [
            "name" => "required"
        ];
    }
}
