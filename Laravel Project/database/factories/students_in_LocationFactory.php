<?php

use Faker\Generator as Faker;

$factory->define(App\students_in_Location::class, function (Faker $faker) {
    return [
        "name" => $faker->name
    ];
});
