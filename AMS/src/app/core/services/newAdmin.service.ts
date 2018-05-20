import { Injectable } from '@angular/core';
import { Http, Headers, RequestOptions} from '@angular/http';
import {environment} from "../../../environments/environment";
import { HttpClient } from '@angular/common/http';

@Injectable()
export class NewAdmin {


    constructor(private http: HttpClient){}


    newMember(data: {username: string, password: string, email: string, role: string }){
        
        return this.http.post(environment.apiPath+"admin",data);
    }


   


}