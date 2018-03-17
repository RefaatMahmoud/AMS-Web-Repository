<?php

use Faker\Generator as Faker;

$factory->define(App\Instructors::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'username' => $faker->unique()->userName,
        'email' => $faker->safeEmail,
        'password' => Hash::make($faker->password), // secret
        'subjectName' => $faker->randomElement(['physics','Medical tools','Math']),
        'telephone' => $faker->phoneNumber
    ];
});
