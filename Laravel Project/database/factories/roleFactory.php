<?php

use Faker\Generator as Faker;

$factory->define(App\role::class, function (Faker $faker) {
    return [
        "accessNumber" => $faker->randomElement([
            "0","1","2","3","4","5"
        ]),
        "title" => $faker->randomElement([
            'admin' , 'student' , 'instructor'
        ])
    ];
});
