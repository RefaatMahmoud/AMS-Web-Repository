<?php

namespace App\Http\Resources\Locations;

use Illuminate\Http\Resources\Json\JsonResource;

class LocationsNameResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'locationName' => $this->locationName
        ];
    }
}
