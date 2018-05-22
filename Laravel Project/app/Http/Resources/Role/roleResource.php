<?php

namespace App\Http\Resources\Role;

use Illuminate\Http\Resources\Json\JsonResource;

class roleResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            "id" => $this->id,
            "accessNumber" => $this->accessNumber,
            "title" => $this->title
        ];
    }
}
