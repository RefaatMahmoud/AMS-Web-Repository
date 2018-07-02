<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRuningActivitiesTable extends Migration
{
    public function up()
    {
        Schema::create('runing_activities', function (Blueprint $table) {
            $table->increments('id');
            $table->string('activity');
            $table->boolean('isRuning');
            $table->boolean('finished');
            $table->date('started_at');
            $table->date('finished_at');
            $table->integer('students');
            $table->integer('delayTime');
            $table->date('fullDate');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('runing_activities');
    }
}
