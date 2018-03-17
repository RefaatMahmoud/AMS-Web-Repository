<?php

namespace App\Http\Resources\Users;

use Illuminate\Http\Resources\Json\JsonResource;

class InstructorsResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            "id" => $this->id ,
            "name" => $this->name ,
            "username" => $this->username,
            "email" => $this->email,
            "subjectName" => $this->subjectName,
            "telepnone" => $this->telephone
        ];
    }
}
