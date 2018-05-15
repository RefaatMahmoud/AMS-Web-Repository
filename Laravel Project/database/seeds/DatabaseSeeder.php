<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
//       factory(\App\User::class,4)->create();
        factory(\App\StudentModel::class,10)->create();
//        factory(\App\Instructors::class,5)->create();
//        factory(\App\setQuestionsByAdmin::class,5)->create();
//        factory(\App\questionsByStudents::class,5)->create();
//        factory(\App\students_in_Location::class,5)->create();
//        factory(App\schedule::class,5)->create();
//        factory(App\subject::class,5)->create();
    }
}
