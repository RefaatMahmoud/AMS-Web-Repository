<?php

namespace App\Http\Resources\Questions;

use Illuminate\Http\Resources\Json\JsonResource;

class setQuestionsByAdminResources extends JsonResource
{
    public function toArray($request)
    {
       return [
           'id' => $this->id,
           'question' => $this->question,
           'option1' => $this->option1,
           'option2' => $this->option2,
           'option3' => $this->option3,
           'option4' => $this->option4,
       ];
    }
}
