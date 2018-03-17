<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        factory(\App\User::class,5)->create();
        factory(\App\StudentModel::class,5)->create();
    }
}
