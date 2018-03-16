<?php

use Faker\Generator as Faker;
use Illuminate\Support\Facades;

$factory->define(App\User::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'username' => $faker->unique()->userName,
        'email' => $faker->safeEmail,
        'password' => Hash::make($faker->password), // secret
        'remember_token' => str_random(10),
    ];
});
