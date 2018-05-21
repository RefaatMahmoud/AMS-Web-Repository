<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateActivityTypesTable extends Migration
{
    public function up()
    {
        Schema::create('activity_types', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->boolean('flag');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('activity_types');
    }
}
