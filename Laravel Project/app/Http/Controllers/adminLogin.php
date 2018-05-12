<?php

namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class adminLogin extends Controller
{
    public function index(){

    }
    public function store(Request $request)
    {
        //create instructor object
        $adminLoginObj = new User();
        //set requests
        $adminLoginObj->username = $request->username;
        $adminLoginObj->password = Hash::make($request->password);
        ///get password in DB by username request
        $passwordInDB = DB::table("users")
            ->where('username','=',$adminLoginObj->username)
            ->value('password');
        //check password request with password in DataBase
        $passwordCheck = Hash::check($request->password,$passwordInDB);
        //Check if username && password is already exits
        $CheckData = DB::table('users')
            ->where('username','=',$adminLoginObj->username)
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
