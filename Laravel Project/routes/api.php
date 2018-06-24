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
Route::apiresource('/activityType' , 'ActivityTypeController');
Route::apiresource('/membersRole' , 'RoleController');
Route::apiresource('/locationsName' , 'LocationsController');
Route::get('/students_in_Location_V2','students_in_locations_V2@index');
Route::post('/students_in_Location_V2','students_in_locations_V2@store');
Route::put('/students_in_Location_V2','students_in_locations_V2@update');
Route::get('/subjects/groupNumber/{id}','groupNumberController@FetchSubjects');
Route::get('/schedules/groupNumber/{id}','groupNumberController@FetchSchedule');
Route::get('students_in_Location/groupNumber/{id}' ,'students_in_same_locations_and_online@index' );
