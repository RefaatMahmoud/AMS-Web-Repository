<?php

namespace App\Http\Resources\Users;

use Illuminate\Http\Resources\Json\JsonResource;

class AdminResource extends JsonResource
{
    public function toArray($request)
    {
        return[
            "id" => $this->id,
            "username" => $this->username,
            "password" => $this->password,
            "email" => $this->email,
            "role" => $this->role
        ];
    }
}
