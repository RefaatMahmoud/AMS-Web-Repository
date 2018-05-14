<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSubjectsTable extends Migration
{
    public function up()
    {
        Schema::create('subjects', function (Blueprint $table) {
            $table->increments('id');
            $table->string('subjectName');
            $table->float('duration');
            $table->integer('totalMark');
            $table->integer('groupNumber');
            $table->timestamps();
        });
    }
    public function down()
    {
        Schema::dropIfExists('subjects');
    }
}
