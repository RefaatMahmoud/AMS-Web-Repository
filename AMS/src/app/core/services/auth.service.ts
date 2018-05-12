import {Injectable} from "@angular/core" ; 
import {Http , Headers, RequestOptions}from "@angular/http"  ; 
import {AdminModel} from "../models/admin.model" ; 
import {environment} from "../../../environments/environment";
import { Observable } from "rxjs/Observable";


@Injectable()
export class AuthService{ 
  constructor(private http : Http){}

   login(data : {username : string , password : string}) {
       let headers = new Headers() ; 
       headers.append("Access-Control-Allow-Origin","http://localhost:4200") ; 
       let options = new RequestOptions(); 
       options.headers = headers ; 
       let url = environment.apiPath+"adminLogin";
       return this.http.post(url,data,options) ; 
   }
}