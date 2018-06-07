<?php

use Faker\Generator as Faker;

$factory->define(App\Locations::class, function (Faker $faker) {
    return [
        "locationName" => $faker->randomElement([
            "Hall 1" , "Hall 2" , "Hall 3" , "Hall 4" , "Hall 5"
        ])
    ];
});
