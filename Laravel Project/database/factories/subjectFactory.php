<?php

use Faker\Generator as Faker;

$factory->define(App\subject::class, function (Faker $faker) {
    return [
        "subjectName" => $faker->randomElement([
            "Surgery" , 'pharmacy' , 'dentist' , 'medical tools'
        ]),
        "duration" => $faker->numberBetween(1,4),
        "totalMark" => $faker->randomElement([
            100 , 80 , 120 , 200
        ]),
        "groupNumber" => $faker->numberBetween(1,5)
    ];
});
