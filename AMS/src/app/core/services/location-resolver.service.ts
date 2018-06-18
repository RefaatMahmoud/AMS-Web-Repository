import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot, ActivatedRouteSnapshot } from "@angular/router";
import { ActivityModel } from "../models/activity.model";
import { Observable } from "rxjs/Observable";
import { promise } from "protractor";
import { LocationModel } from "../models/location.model";
import { LocationService } from "./location.service";
@Injectable()
export class LocationResolverService implements Resolve<LocationModel>{
    constructor(private locationService:LocationService) { }
    resolve(
        route: ActivatedRouteSnapshot,
        state: RouterStateSnapshot
    ): Observable<LocationModel> | Promise<LocationModel> | LocationModel {

        return this.locationService.getLocation(route.params['id']).toPromise().then(
            data => data
        ).catch(
            err => err
        )
    }
}