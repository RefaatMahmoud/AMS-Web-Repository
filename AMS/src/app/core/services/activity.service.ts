import {Injectable}from "@angular/core" ; 
import {HttpClient} from "@angular/common/http" 
import { environment } from "../../../environments/environment";
import { ActivityModel } from "../models/activity.model";
import { ActivityPageModel } from "../models/activity-page";
import { PageModel } from "../models/page";


@Injectable()
export class ActivityService {
    constructor (private http : HttpClient){}


    getActivities(){
        let url = `${environment.apiPath}schedule`; 
        return this.http.get<PageModel<ActivityModel>>(url) ; 
    }
    getActivity(id : number){
        let url = `${environment.apiPath}schedule/${id}`; 
        return this.http.get<ActivityModel>(url) ; 
    }
    addActivity(data : ActivityModel) { 
        let url = `${environment.apiPath}schedule`; 
        return this.http.post<ActivityModel>(url,data) ; 
    }
    updateActivity(data : ActivityModel , id : number) { 
        console.log(id) ;
        let url = `${environment.apiPath}schedule/${id}`; 
        return this.http.put<ActivityModel>(url,data) ; 
    }
    deleteActivity(id) { 
        let url = `${environment.apiPath}schedule/${id}`; 
        return this.http.delete<ActivityModel>(url) ; 
    }
    
}