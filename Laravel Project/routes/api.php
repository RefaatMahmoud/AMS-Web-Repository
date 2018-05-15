<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::apiresource('/admin','adminUsersController');
Route::apiresource('/students','StudentModelController');
Route::apiresource('/instructors','InstructorsController');
Route::apiresource('/questionsByAdmin','SetQuestionsByAdminController');
Route::apiresource('/questionsByStudtents','QuestionsByStudentsController');
Route::apiresource('/studentLogin','StudentLoginController');
Route::apiresource('/instructorLogin','instructorLogin');
Route::apiresource('/adminLogin','adminLogin');
Route::apiresource('/students_in_Location','StudentsInLocationController');
Route::apiresource('/schedule','ScheduleController');
Route::apiresource('/subjects','SubjectController');