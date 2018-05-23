<?php

use Faker\Generator as Faker;

$factory->define(App\activityType::class, function (Faker $faker) {
    return [
        "title" => $faker->randomElement([
            'section' , 'lecture' , 'meeting'
        ]),
        "flag" => $faker->boolean
    ];
});
