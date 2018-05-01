<?php

namespace App\Http\Resources\Users;

use Illuminate\Http\Resources\Json\JsonResource;

class StudentsResource extends JsonResource
{
    public function toArray($request)
    {
       return [
           "id" => $this->id ,
           "name" => $this->name ,
           "username" => $this->username,
           "password" => $this->password,
           "email" => $this->email,
           "level" => $this->level,
           "telephone" => $this->telephone
       ];
    }
}
