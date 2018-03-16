<?php

namespace App\Exceptions;

use Exception;
use Illuminate\Database\QueryException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;

class Handler extends ExceptionHandler
{

    protected $dontReport = [
        //
    ];

    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    public function report(Exception $exception)
    {
        parent::report($exception);
    }

    public function render($request, Exception $exception)
    {
        if($request->expectsJson())
        {
            if($exception instanceof QueryException)
            {
                return response([
                    'data' => 'username is already Exits'
                ],404);
            }
        }
        return parent::render($request, $exception);
    }
}
