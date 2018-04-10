<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class questionsByStudents extends Model
{
    protected $fillable =[
        'answer1','answer2','answer3','answer4'
    ];

    public function students(){
        return $this->belongsTo(StudentModel::class);
    }
}
