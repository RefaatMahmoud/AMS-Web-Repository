import { Injectable } from '@angular/core';
import { Http, Headers, RequestOptions} from '@angular/http';
import {environment} from "../../../environments/environment";
import { PageModel } from '../models/page';


@Injectable()
export class NewSubject {


    constructor(private http: Http){}


    newSubject(data: {subjectName: string, totalMark: number, duration: number, groupNumber: number}){
        let headers = new Headers() ;   
        headers.append("Access-Control-Allow-Origin","http://localhost:4200/home/new-subject") ; 
        let options = new RequestOptions(); 
        options.headers = headers ; 
        return this.http.post(environment.apiPath+"subjects",data,options);
    }

    fetchSubjects(){
        let url = `${environment.apiPath}/subjects` ;
        return this.http.get<PageModel<SubjectModel>>(url) ;
    }


   


}



