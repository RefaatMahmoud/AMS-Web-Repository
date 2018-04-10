<?php

use Faker\Generator as Faker;

$factory->define(App\questionsByStudents::class, function (Faker $faker) {
    return [
        'student_id' => function(){
            return App\StudentModel::all()->random();
        },
        'answer1' => $faker->randomElement(['bad','good','very good','excellent']),
        'answer2' => $faker->randomElement(['bad','good','very good','excellent']),
        'answer3' => $faker->randomElement(['bad','good','very good','excellent']),
        'answer4' => $faker->randomElement(['bad','good','very good','excellent']),
    ];
});
