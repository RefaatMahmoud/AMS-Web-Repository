import {Injectable}from "@angular/core" ; 
import {HttpClient} from "@angular/common/http" 
import { environment } from "../../../environments/environment";
import { InstructorModel } from "../models/instructor.model";
import { InstructorPageModel } from "../models/instructor-page";
import { ActivityTypeModel } from "../models/activity-type.model";
import { ActivityTypePageModel } from "../models/activity-type-page.model";
import { PageModel } from "../models/page";
import { StudentModel } from "../models/student.model";
import { AdminModel } from "../models/admin.model";


@Injectable()
export class TestService {
    constructor (private http : HttpClient){}


    getInstructors(){
        let url = `${environment.apiPath}instructors`; 
        return this.http.get<PageModel<InstructorModel>>(url) ; 
    }

    getActivityTypes(){
        let url = `${environment.apiPath}activityType`; 
        return this.http.get<PageModel<ActivityTypeModel>>(url) ; 
    }


    getAdminCount() { 
        let url = `${environment.apiPath}admin`; 
        return this.http.get<PageModel<AdminModel>>(url) ; 
    }
    getInstructorCount(){ 
        let url = `${environment.apiPath}instructors`; 
        return this.http.get<PageModel<InstructorModel>>(url) ; 
    }
    getStudentCount() { 
        let url = `${environment.apiPath}students`; 
        return this.http.get<PageModel<StudentModel>>(url) ; 
    }
}