<?php

use Faker\Generator as Faker;

$factory->define(App\User::class, function (Faker $faker) {
    return [
        'username' => $faker->unique()->userName,
        'role' => $faker->numberBetween(0,5),
        'email' => $faker->safeEmail,
        'password' => Hash::make($faker->password), // secret
        'remember_token' => str_random(10),
    ];
});
