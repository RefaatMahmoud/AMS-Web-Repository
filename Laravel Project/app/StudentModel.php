<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StudentModel extends Model
{
    //Protected Important When you make update
    protected $fillable =[
        'name','username' ,'email', 'level' , 'telephone'
    ];

    protected $hidden =[
        'password',
    ];
}
