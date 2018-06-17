<?php

use Faker\Generator as Faker;

$factory->define(App\stduents_in_locations::class, function (Faker $faker) {
    return [
        "name" => $faker->name,
        'level' => $faker->randomElement(['1','2','3','4','5']),
        "subjectName" => $faker->randomElement([
            "Surgery" , 'pharmacy' , 'dentist' , 'medical tools'
        ]),
        "activityType" => $faker->randomElement([
            "lecture" , "section"
        ]),
        "status" => $faker->boolean
    ];
});
