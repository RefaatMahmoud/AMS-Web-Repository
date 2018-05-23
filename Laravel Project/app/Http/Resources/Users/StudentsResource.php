<?php

namespace App\Http\Resources\Users;

use Illuminate\Http\Resources\Json\JsonResource;

class StudentsResource extends JsonResource
{
    public function toArray($request)
    {
        return parent::toArray($request);
    }
}
