<?php

namespace App\Http\Controllers;

use App\Http\Requests\Locations\LocationsNameRequest;
use App\Http\Resources\Locations\LocationsNameResource;
use App\Locations;
class LocationsController extends Controller
{
    public function index()
    {
        return response([
            "data" => LocationsNameResource::collection(Locations::all())
        ],200);
    }

    public function store(LocationsNameRequest $request)
    {
        $locationNameObj = new Locations();
        $locationNameObj->locationName = $request->locationName;
        $locationNameObj->save();
        return response([
            "data" => new LocationsNameResource($locationNameObj)
        ],201);
    }

    public function show($id)
    {
        $locationNameObj = Locations::find($id);
        return response([
            "data" => new LocationsNameResource($locationNameObj)
        ],200);
    }

    public function update(LocationsNameRequest $request,$id)
    {
        $locationNameObj = Locations::find($id);
        $locationNameObj->update($request->all());
        return response([
            "data" => new LocationsNameResource($locationNameObj)
        ],200);
    }

    public function destroy($id)
    {
        $locationNameObj = Locations::find($id);
        $locationNameObj->delete();
        return response([
            "data" => "deleted successfully"
        ],200);
    }
}
