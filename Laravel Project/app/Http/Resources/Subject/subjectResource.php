<?php

namespace App\Http\Resources\Subject;

use Illuminate\Http\Resources\Json\JsonResource;

class subjectResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            "id" => $this->id,
            "subjectName" => $this->subjectName,
            "duration" => $this->duration,
            "totalMark" => $this->totalMark,
            "groupNumber" => $this->groupNumber
        ];
    }
}
