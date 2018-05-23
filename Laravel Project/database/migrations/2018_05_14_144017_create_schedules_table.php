<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSchedulesTable extends Migration
{
    public function up()
    {
        Schema::create('schedules', function (Blueprint $table) {
            $table->increments('id');
            $table->string('day');
            $table->string('subjectName');
            $table->string('instructorName');
            $table->string('totalMark');
            $table->string('Location');
            $table->string('startTime');
            $table->string('endTime');
            $table->string('type');
            $table->string('groupNumber');
            $table->timestamps();
        });
    }
    public function down()
    {
        Schema::dropIfExists('schedules');
    }
}
