<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddActivityTypeAndSubjectNameToStduentsInLocations extends Migration
{
    public function up()
    {
        Schema::table('stduents_in_locations', function (Blueprint $table) {
            $table->string('activityType');
            $table->string('subjectName');
        });
    }
    public function down()
    {
        Schema::table('stduents_in_locations', function (Blueprint $table) {

        });
    }
}
