<?php

namespace App\Http\Requests\ActivtyType;

use Illuminate\Foundation\Http\FormRequest;

class runingActivityRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }
    public function rules()
    {
        return [
            'activity' => 'required|string',
            'isRuning' => 'required|boolean' ,
            'finished'=> 'required|boolean' ,
            'started_at' => 'required' ,
            'finished_at' => 'required' ,
            'students' =>'required|integer' ,
            'delayTime' => 'required' ,
            'fullDate' => 'required'
        ];
    }
}
