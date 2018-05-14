<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class schedule extends Model
{
    protected $fillable = [
        'day' , 'instructorName' , 'subjectName' , 'Location' , 'startTime' , 'endTime' , 'type' , 'groupNumber' ,
    ];
}
