<?php

namespace App\Http\Controllers;

use App\Http\Resources\Role\roleResource;
use App\role;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    public function index()
    {
        return response([
            "role" => roleResource::collection(role::all())
        ],200);
    }

    public function store(Request $request)
    {
        //create
        $roleObj = new role();
        //set requests
        $roleObj->accessNumber = $request->accessNumber;
        $roleObj->title = $request->title;
        //save
        $roleObj->save();
        //response
        return response([
            "role" => new roleResource($roleObj)
        ],201);
    }
}
