<?php

namespace App\Http\Controllers;

use App\Http\Requests\Users\AdminRequest;
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
        //Create
        $adminObj  = new User();
        $adminObj->username = $request->username;
        $adminObj->password  = Hash::make($request->password);
        $adminObj->email = $request->email;
        $adminObj->role = $request->role;
        //Save
        $adminObj->save();
        //Response
        return response([
            'admin' => new AdminResource($adminObj)
        ],201);
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
