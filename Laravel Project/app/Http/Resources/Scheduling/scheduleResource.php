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
            "Location" => $this->Location,
            "instructorName" => $this->instructorName,
            "subjectName" => $this->subjectName,
            "type" => $this->type,
            "groupNumber" => $this->groupNumber,
            "startTime" => $this->startTime,
            "endTime" => $this->endTime
        ];
    }
}
