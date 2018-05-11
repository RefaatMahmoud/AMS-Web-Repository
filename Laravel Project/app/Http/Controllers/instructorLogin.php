<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Instructors;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class instructorLogin extends Controller
{
    public function store(Request $request)
    {
        //create instructor object
        $instructorLoginObj = new Instructors();
        //set requests
        $instructorLoginObj->username = $request->username;
        $instructorLoginObj->password = Hash::make($request->password);
        ///get password in DB by username request
        $passwordInDB = DB::table("instructors")
            ->where('username','=',$instructorLoginObj->username)
            ->value('password');
        //check password request with password in DataBase
        $passwordCheck = Hash::check($request->password,$passwordInDB);
        //Check if username && password is already exits
        $CheckData = DB::table('instructors')
            ->where('username','=',$instructorLoginObj->username)
            ->get();
        $count = count($CheckData);
        if($count > 0 && $passwordCheck== true)
        {
            return response([
                "status" => "login successfully"
            ],200);
        }
        else
        {
            return response([
                "status" => "you don't have an account"
            ],200);
        }
    }
}
