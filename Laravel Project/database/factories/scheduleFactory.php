<?php

use Faker\Generator as Faker;

$factory->define(App\schedule::class, function (Faker $faker) {
    return [
        "Day" => $faker->randomElement([
            "Sunday" , 'Monday' , 'Tuesday' , 'Wednesday' , 'Thursday' , 'Friday' , 'Saturday'
        ]),
        "subjectName" => $faker->randomElement([
            "Surgery" , 'pharmacy' , 'dentist' , 'medical tools'
        ]),
        "instructorName" => $faker->name,
        "location" => $faker->randomElement([
            "Hall 1" , "Hall 2" , "Hall 3" , "Hall 4" , "Hall 5"
        ]),
        "startTime" => $faker->numberBetween(1,12),
        "endTime" => $faker->numberBetween(1,12),
        "type" => $faker->randomElement([
            "lecture" , "section"
        ]),
        "groupNumber" => $faker->numberBetween(1,5)
    ];
});
