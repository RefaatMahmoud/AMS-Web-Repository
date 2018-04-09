<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSetQuestionsByAdminsTable extends Migration
{
    public function up()
    {
        Schema::create('set_questions_by_admins', function (Blueprint $table) {
            $table->increments('id');
            $table->string('question');
            $table->string('option1');
            $table->string('option2');
            $table->string('option3');
            $table->string('option4');
            $table->string('option5');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('set_questions_by_admins');
    }
}
