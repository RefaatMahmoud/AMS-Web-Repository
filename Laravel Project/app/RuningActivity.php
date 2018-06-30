<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RuningActivity extends Model
{
    protected $fillable = [
        'activity','isRuning','finished','started_at','finished_at','students','delayTime','fullDate'
    ];
}
