import { Injectable } from "@angular/core";
import { Resolve, RouterStateSnapshot, ActivatedRouteSnapshot } from "@angular/router";
import { ActivityModel } from "../models/activity.model";
import { Observable } from "rxjs/Observable";
import { promise } from "protractor";
import { ActivityService } from "./activity.service";
@Injectable()
export class ActivityResolverService implements Resolve<ActivityModel>{
    constructor(private activityService: ActivityService) { }
    resolve(
        route: ActivatedRouteSnapshot,
        state: RouterStateSnapshot
    ): Observable<ActivityModel> | Promise<ActivityModel> | ActivityModel {

        return this.activityService.getActivity(route.params['id']).toPromise().then(
            data => data
        ).catch(
            err => err
        )
    }
}