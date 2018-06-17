<?php

namespace App\Http\Controllers;
use App\Http\Resources\Users\AdminResource;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class adminUsersController extends Controller
{
    public function index()
    {
        return response([
            "data" => AdminResource::collection(User::all())
        ]);
    }

    public function store(Request $request)
    {
        $rules = [
            'username' => 'required|string|min:3',
            'password' => 'required|string|min:3',
            'email' => 'required|string' ,
            'role' => 'required|string'
        ];
        $validator = Validator::make($request->all() , $rules);
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
            //$adminObj->remember_token = str_random(60);
            //Save
            $adminObj->save();
            //Response
            return response([
                'data' => new AdminResource($adminObj)
            ],201);
        }
    }

    public function show($id)
    {
        return response([
            'data' => new AdminResource(User::find($id))
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
            'data' => new AdminResource($adminObj)
        ],200);
    }

    public function destroy($id)
    {
        $adminObj = User::find($id);
        $adminObj->delete();
        return response([
            "data" => "deleted successfully"
        ],200);
    }
}
