<?php

use Faker\Generator as Faker;

$factory->define(App\StudentModel::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'username' => $faker->unique()->userName,
        'email' => $faker->safeEmail,
        'password' => Hash::make($faker->password), // secret
        'level' => $faker->randomElement(['1','2','3','4','5','6']),
        'telephone' => $faker->phoneNumber,
        "role" => $faker->randomElement([
            "0","1","2","3","4","5"
        ])
    ];
});
