<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        factory(\App\User::class,5)->create();
        factory(\App\StudentModel::class,5)->create();
        factory(\App\Instructors::class,5)->create();
        factory(\App\setQuestionsByAdmin::class,5)->create();
        factory(\App\questionsByStudents::class,5)->create();
    }
}
