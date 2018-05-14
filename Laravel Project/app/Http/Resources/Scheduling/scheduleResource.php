<?php

namespace App\Http\Resources\Scheduling;

use Illuminate\Http\Resources\Json\JsonResource;

class scheduleResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            "id" => $this->id,
            "day" => $this->day,
            "Location" => $this->location,
            "instructorName" => $this->instructorName,
            "subjectName" => $this->subjectName,
            "startTime" => $this->startTime,
            "endTime" => $this->endTime,
            "type" => $this->type
        ];
    }
}
