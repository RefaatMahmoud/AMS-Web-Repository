<?php

namespace App\Http\Resources\Users;
use Illuminate\Http\Resources\Json\JsonResource;

class students_in_LocationResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            "id" => $this->id,
            "name" => $this->name
        ];
    }
}
