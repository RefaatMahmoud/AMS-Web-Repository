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
            "locationsName" => LocationsNameResource::collection(Locations::all())
        ],200);
    }

    public function store(LocationsNameRequest $request)
    {
        $locationNameObj = new Locations();
        $locationNameObj->locationName = $request->locationName;
        $locationNameObj->save();
        return response([
            "locationsName" => new LocationsNameResource($locationNameObj)
        ],201);
    }

    public function show($id)
    {
        $locationNameObj = Locations::find($id);
        return response([
            "locationsName" => new LocationsNameResource($locationNameObj)
        ],200);
    }

    public function update(LocationsNameRequest $request,$id)
    {
        $locationNameObj = Locations::find($id);
        $locationNameObj->update($request->all());
        return response([
            "locationsName" => new LocationsNameResource($locationNameObj)
        ],200);
    }

    public function destroy($id)
    {
        $locationNameObj = Locations::find($id);
        $locationNameObj->delete();
        return response([
            "locationName" => "deleted successfully"
        ],200);
    }
}
