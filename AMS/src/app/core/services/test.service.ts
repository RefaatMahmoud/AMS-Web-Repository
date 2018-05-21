import {Injectable}from "@angular/core" ; 
import {HttpClient} from "@angular/common/http" 
import { environment } from "../../../environments/environment";
import { InstructorModel } from "../models/instructor.model";
import { InstructorPageModel } from "../models/instructor-page";


@Injectable()
export class TestService {
    constructor (private http : HttpClient){}


    getInstructors(){
        let url = `${environment.apiPath}instructors`; 
        return this.http.get<InstructorPageModel<InstructorModel>>(url) ; 
    }

    
}