<?php

namespace App\Exceptions;

use Exception;
use Illuminate\Database\QueryException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

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
                    'data' => 'username is already taken'
                ],404);
            }
            elseif ($exception instanceof NotFoundHttpException)
            {
                return response([
                    'data' => 'this invalid link in post'
                ]);
            }
            elseif ($exception instanceof \ErrorException)
            {
                return response([
                    'data' => 'there not id with your update request'
                ]);
            }
        }
        return parent::render($request, $exception);
    }
}
