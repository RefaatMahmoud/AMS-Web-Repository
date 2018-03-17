<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Instructors extends Model
{
    //Protected Important When you make update
    protected $fillable =[
        'name','username' ,'email', 'subjectName' , 'telephone'
    ];

    protected $hidden =[
        'password',
    ];
}
