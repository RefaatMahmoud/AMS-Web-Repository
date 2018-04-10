<?php

namespace App\Http\Resources\Questions;

use Illuminate\Http\Resources\Json\JsonResource;

class questionsByStudentsResource extends JsonResource
{
    public function toArray($request)
    {
       return[
           'student_id' => $this->student_id,
           'student_info_link' => route('students.show',$this->student_id),
           'answer1' => $this->answer1,
           'answer2' => $this->answer2,
           'answer3' => $this->answer3,
           'answer4' => $this->answer4,
       ];
    }
}
