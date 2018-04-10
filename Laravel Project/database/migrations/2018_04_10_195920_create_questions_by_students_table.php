<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateQuestionsByStudentsTable extends Migration
{
    public function up()
    {
        Schema::create('questions_by_students', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('student_id')->unsigned();
            $table->foreign('student_id')->references('id')->on('student_models')->onDelete('cascade');
            $table->string('answer1');
            $table->string('answer2');
            $table->string('answer3');
            $table->string('answer4');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('questions_by_students');
    }
}
