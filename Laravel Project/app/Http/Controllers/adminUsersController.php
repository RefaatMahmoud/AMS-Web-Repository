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
        return AdminResource::collection(User::all());
    }

    public function store(Request $request)
    {
        //Create
        $adminObj  = new User();
        $adminObj->name = $request->name;
        $adminObj->username = $request->username;
        $adminObj->password  = Hash::make($request->password);
        $adminObj->email = $request->email;
        //Save
        $adminObj->save();
        //Response
        return response([
            'data' => new AdminResource($adminObj)
        ],201);
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
        $adminObj->name = $request->name;
        $adminObj->password = Hash::make($request->password);
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
