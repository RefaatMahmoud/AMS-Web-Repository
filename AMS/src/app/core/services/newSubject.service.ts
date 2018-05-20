import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import {environment} from "../../../environments/environment";
import { SubjectModel } from '../models/subject.model';


@Injectable()
export class NewSubject {


    constructor(private http: HttpClient){}


    newSubject(data: {subjectName: string, totalMark: number, duration: number, groupNumber: number}){
        
        return this.http.post(environment.apiPath+"subjects",data);
    }


   
    getSubjects(){
        return  this.http.get<Array<SubjectModel>>(environment.apiPath+"subjects");
    }



   

}