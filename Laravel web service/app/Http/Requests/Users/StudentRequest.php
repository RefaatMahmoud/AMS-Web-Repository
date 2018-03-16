<?php

namespace App\Http\Requests\Users;
use Illuminate\Foundation\Http\FormRequest;

class StudentRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|min:4',
            'email' => 'required' ,
            'password' => 'required|min:3|max:15',
            'username' => 'required|min:3',
            'telephone' => 'required|min:10',
            'level' =>'required'
        ];
    }
}
