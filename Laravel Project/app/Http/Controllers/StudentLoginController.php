<?php

namespace App\Http\Controllers;

use App\studentLogin;
use Illuminate\Http\Request;
use App\StudentModel;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class StudentLoginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //create object
        $studenLoginObj = new StudentModel();
        //get requests
        $studenLoginObj->username = $request->username;
        $studenLoginObj->password = Hash::make($request->password);
        //get username Data
        ///get password in DB by username request
        $passwordInDB = DB::table("student_models")
                        ->where('username','=',$studenLoginObj->username)
                        ->value('password');
        //passwordCheck
        $passwordCheck = Hash::check($request->password,$passwordInDB);
        //Check if username && password is already exits
        $CheckData = DB::table('student_models')
            ->where('username','=',$studenLoginObj->username)
            ->get();
        $count = count($CheckData);
        if($count > 0 && $passwordCheck== true)
        {
            return response([
                "status" => "is login successfully"
            ],200);
        }
        else
        {
            return response([
                "status" => "you don't have an account"
            ],200);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\studentLogin  $studentLogin
     * @return \Illuminate\Http\Response
     */
    public function show(studentLogin $studentLogin)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\studentLogin  $studentLogin
     * @return \Illuminate\Http\Response
     */
    public function edit(studentLogin $studentLogin)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\studentLogin  $studentLogin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, studentLogin $studentLogin)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\studentLogin  $studentLogin
     * @return \Illuminate\Http\Response
     */
    public function destroy(studentLogin $studentLogin)
    {
        //
    }
}
