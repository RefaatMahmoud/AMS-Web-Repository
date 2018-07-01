<?php

use Faker\Generator as Faker;

$factory->define(App\RuningActivity::class, function (Faker $faker) {
    return [
        'activity' => $faker->randomElement([
            'lecture' , 'section'
        ]),
        'isRuning' => $faker->boolean,
        'finished' => $faker->boolean,
        'started_at' => $faker->dateTime,
        'finished_at' => $faker->dateTime,
        'students' => $faker->numberBetween(50,100),
        'delayTime' => $faker->numberBetween(5,15),
        'fullDate' => $faker->date()
    ];
});
