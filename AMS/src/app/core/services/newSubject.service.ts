import { HttpClient } from '@angular/common/http';
import { Injectable, OnInit } from '@angular/core';
import {environment} from "../../../environments/environment";
import { PageModel } from '../models/page';
import { SubjectModel } from '../models/subject.model';



@Injectable()
export class NewSubject {

    private subject : SubjectModel ;

    constructor(private http: HttpClient){}


    newSubject(data: {subjectName: string, totalMark: number, duration: number, groupNumber: number}){
        
        return this.http.post(environment.apiPath+"subjects",data);
    }

   
    getSubjects(){
        let url = `${environment.apiPath}subjects` ;
        return this.http.get<PageModel<SubjectModel>>(url) ;
    }


    


    getSubject(id:number){
        let url = `${environment.apiPath}subjects/`+id ;
        return this.http.get<SubjectModel>(url) ;
    }

    

}



   

