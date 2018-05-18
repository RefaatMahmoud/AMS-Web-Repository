<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddTotalMarkToSchedules extends Migration
{
    public function up()
    {
        Schema::table('schedules', function (Blueprint $table) {
            $table->integer('totalMark');
        });
    }
    public function down()
    {
        Schema::table('schedules', function (Blueprint $table) {

        });
    }
}
