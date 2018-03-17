<?php

use Faker\Generator as Faker;

$factory->define(App\StudentModel::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'username' => $faker->unique()->userName,
        'email' => $faker->safeEmail,
        'password' => Hash::make($faker->password), // secret
        'level' => $faker->randomElement(['first','second','third']),
        'telephone' => $faker->phoneNumber
    ];
});
