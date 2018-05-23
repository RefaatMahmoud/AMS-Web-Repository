<?php

namespace App\Http\Requests\Users;
use Illuminate\Foundation\Http\FormRequest;

class StudentRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'name' => 'required|min:4',
            'email' => 'required' ,
            'password' => 'required|min:3',
            'username' => 'required|min:3',
            'telephone' => 'required|min:10',
            'level' =>'required',
            'role' => 'required|string'
        ];
    }
}
