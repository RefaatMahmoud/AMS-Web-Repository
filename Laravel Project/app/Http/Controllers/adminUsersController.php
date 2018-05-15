<?php

namespace App\Http\Controllers;
use App\Http\Resources\Users\AdminResource;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Hash;

class adminUsersController extends Controller
{
    public function index()
    {
        return response([
            "admin" => AdminResource::collection(User::all())
        ]);
    }

    public function store(Request $request)
    {
        $rules = [
            'username' => 'required',
            'password' => 'required',
            'email' => 'required' ,
            'role' => 'required'
        ];
        $validator = \Illuminate\Support\Facades\Validator::make($request->all() , $rules);
        if($validator->fails())
        {
            return response([
                "status" => false ,
                "message" => $validator->messages()
            ]);
        }
        else
        {
            //Create
            $adminObj  = new User();
            $adminObj->username = $request->username;
            $adminObj->password  = Hash::make($request->password);
            $adminObj->email = $request->email;
            $adminObj->role = $request->role;
            $adminObj->remember_token = str_random(60);
            //Save
            $adminObj->save();
            //Response
            return response([
                'admin' => new AdminResource($adminObj)
            ],201);
        }
    }

    public function show($id)
    {
        return response([
            'admin' => new AdminResource(User::find($id))
        ],200);
    }

    public function update(Request $request, $id)
    {
        $adminObj = User::find($id);
        $adminObj->username = $request->username;
        $adminObj->email = $request->email;
        $adminObj->password = Hash::make($request->password);
        $adminObj->role = $request->role;
        $adminObj->save(); //save username
        return response([
            'admin' => new AdminResource($adminObj)
        ],200);
    }

    public function destroy($id)
    {
        $adminObj = User::find($id);
        $adminObj->delete();
        return response([
            "admin" => "deleted successfully"
        ],200);
    }
}
