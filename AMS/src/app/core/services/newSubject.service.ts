import { HttpClient } from '@angular/common/http';
import { Injectable, OnInit } from '@angular/core';
import {environment} from "../../../environments/environment";
import { PageModel } from '../models/page';
import { SubjectModel } from '../models/subject.model';



@Injectable()
export class NewSubject {

    private subject : SubjectModel ;

    constructor(private http: HttpClient){}


    newSubject(data: {subjectName: string, totalMark: string, duration: string, groupNumber: string}){

        return this.http.post(environment.apiPath+"subjects",data);
    }

   
    getSubjects(){
        let url = `${environment.apiPath}subjects` ;
        return this.http.get<PageModel<SubjectModel>>(url) ;
    }


    updateSubject(data : SubjectModel , id : number) { 
        console.log(id) ;
        let url = `${environment.apiPath}subjects/${id}`; 
        return this.http.put<SubjectModel>(url,data) ; 
    }


    getSubject(id:number){
        let url = `${environment.apiPath}subjects/`+id ;
        return this.http.get<PageModel<SubjectModel>>(url) ;
    }

    deleteSubject(id:number){
        let url = `${environment.apiPath}subjects/`+id ;
        return this.http.delete<SubjectModel>(url) ;
    }

    getSubjectsByGroupNumber(id:number){
        let url = `${environment.apiPath}subjects/groupNumber/`+id ;
        return this.http.get<PageModel<SubjectModel>>(url) ;
    }

}



   

