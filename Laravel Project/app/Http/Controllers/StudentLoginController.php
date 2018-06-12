<?php
namespace App\Http\Controllers;
use App\Http\Resources\Users\StudentsResource;
use Illuminate\Http\Request;
use App\StudentModel;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class StudentLoginController extends Controller
{
    public function index(){

    }
    public function store(Request $request)
    {
        //create object
        $studenLoginObj = new StudentModel();
        //set requests
        $studenLoginObj->username = $request->username;
        $studenLoginObj->password = Hash::make($request->password);
        ///get password in DB by username request
        $passwordInDB = DB::table("student_models")
                        ->where('username','=',$studenLoginObj->username)
                        ->value('password');
        //check password request with password in DataBase
        $passwordCheck = Hash::check($request->password,$passwordInDB);
        //Check if username && password is already exits
        $CheckData = DB::table('student_models')
            ->where('username','=',$studenLoginObj->username)
            ->get();
        $count = count($CheckData);
        if($count > 0 && $passwordCheck== true)
        {
            //user info
            $userInfo = DB::table('student_models')->where('username','=',$studenLoginObj->username)->get();
            return response([
                "studentLogin" => new StudentsResource($userInfo)
            ],200);
        }
        else
        {
            return response([
                "studentLogin" => "you don't have an account"
            ],404);
        }
    }
}
