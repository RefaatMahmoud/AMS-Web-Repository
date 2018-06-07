<?php

namespace App\Http\Requests\Locations;

use Illuminate\Foundation\Http\FormRequest;

class LocationsNameRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            "locationName" => "required"
        ];
    }
}
