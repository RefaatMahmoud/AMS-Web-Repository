<?php

namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
class adminLogin extends Controller
{
    public function index(){

    }
    public function store(Request $request)
    {
        $rules = [
          "username" => "required", "password" => "required"
        ];
        $validator = Validator::make($request->all(),$rules);

        if($validator->fails())
        {
            return response([
                "status" => false ,
                "message" => $validator->messages()
            ]);
        }
        else
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
                //Get all User information who Login
                $userInfo = DB::table('users')->where('username','=',$adminLoginObj->username)->get();
                $password = DB::table('users')->where('username','=',$adminLoginObj->username)->value("password");
                $email = DB::table('users')->where('username','=',$adminLoginObj->username)->value("email");
                $remember_token = DB::table('users')->where('username','=',$adminLoginObj->username)->value("remember_token");
                $role = DB::table('users')->where('username','=',$adminLoginObj->username)->value("role");
                return response([
                    "username" => $adminLoginObj->username,
                    "password" => $password,
                    "email" => $email,
                    "remember_token" => $remember_token,
                    "role" => $role
                ],200);
            }
            else
            {
                return response([
                    "data" => "you don't have an account"
                ],200);
            }
        }
    }
}
