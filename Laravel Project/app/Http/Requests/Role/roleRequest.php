<?php

namespace App\Http\Requests\Role;

use Illuminate\Foundation\Http\FormRequest;

class roleRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            "accessNumber" => "required|string"
        ];
    }
}
