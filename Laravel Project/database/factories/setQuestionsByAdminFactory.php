<?php

use Faker\Generator as Faker;

$factory->define(App\setQuestionsByAdmin::class, function (Faker $faker) {
    return [
        'question' => $faker->randomElement([
            'Give your feedback about lecture ? ' ,
            'Give your feedback about instructor ?' ,
            'Give your feedback about content ?'
        ]),
        'option1' => $faker->randomElement([
            'bad','good','very good' ,'Excellent'
        ]),
        'option2' => $faker->randomElement([
            'bad','good','very good' ,'Excellent'
        ]),
        'option3' => $faker->randomElement([
            'bad','good','very good' ,'Excellent'
        ]),
        'option4' => $faker->randomElement([
            'bad','good','very good' ,'Excellent'
        ])
    ];
});
