import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";
import { environment } from "../../../environments/environment";
import { StudentsInLocationPageModel } from "../models/student_in_location-page";
import { StudentsInLocationModel } from "../models/student_in_location.model";

@Injectable()
export class StudentsInLocationService {


    constructor(private http: HttpClient){}


    
    getStudentsInLocation(){
        let url = `${environment.apiPath}students_in_Location` ;
        return this.http.get<StudentsInLocationPageModel<StudentsInLocationModel>>(url) ;
    }



}