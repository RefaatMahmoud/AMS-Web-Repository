<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        factory(\App\User::class,10)->create();
        factory(\App\StudentModel::class,10)->create();
        factory(\App\Instructors::class,10)->create();
        factory(\App\setQuestionsByAdmin::class,5)->create();
        factory(\App\questionsByStudents::class,5)->create();
        factory(\App\stduents_in_locations::class,10)->create();
        factory(App\schedule::class,10)->create();
        factory(App\subject::class,10)->create();
        factory(App\activityType::class,10)->create();
        factory(App\role::class,3)->create();
    }
}
