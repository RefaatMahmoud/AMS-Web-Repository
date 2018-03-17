<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentModelsTable extends Migration
{
    public function up()
    {
        Schema::create('student_models', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('username')->unique();
            $table->string('password');
            $table->string('email');
            $table->string('telephone');
            $table->string('level');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('student_models');
    }
}
