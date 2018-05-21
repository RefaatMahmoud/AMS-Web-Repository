import {Injectable}from "@angular/core" ; 
import {HttpClient} from "@angular/common/http" 
import { environment } from "../../../environments/environment";
import { InstructorModel } from "../models/instructor.model";
import { InstructorPageModel } from "../models/instructor-page";
import { ActivityModel } from "../models/activity.model";


@Injectable()
export class ActivityService {
    constructor (private http : HttpClient){}


    getActivities(){
        let url = `${environment.apiPath}schedule`; 
        return this.http.get<InstructorPageModel<InstructorModel>>(url) ; 
    }
    addActivity(data : ActivityModel) { 
        let url = `${environment.apiPath}schedule`; 
        return this.http.post<ActivityModel>(url,data) ; 
    }
    updateActivity(data : ActivityModel) { 
        let url = `${environment.apiPath}schedule`; 
        return this.http.put<ActivityModel>(url,data) ; 
    }
    deleteActivity(id) { 
        let url = `${environment.apiPath}schedule/${id}`; 
        return this.http.delete<ActivityModel>(url) ; 
    }
    
}