import { Injectable } from "@angular/core";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { AdminModel } from "../models/admin.model";
import { environment } from "../../../environments/environment";
import { Observable } from "rxjs/Observable";
import {Router} from "@angular/router" ; 
import { UserModel } from "../models/user.model";


@Injectable()
export class AuthService {
    currentUser : UserModel ; 
    authenticated: boolean = false;
    constructor(private http: HttpClient , private router : Router) { }

    login(data: { username: string, password: string })   {
        let url = environment.apiPath + "adminLogin";
        console.log(this.currentUser) ;
        return this.http.post(url, data);
    }
    isAuthenticated() {
        if (!this.authenticated) {
            return false;
        }
        return true;
    }

    setUser(user) {
       this.currentUser = user ;
       localStorage.setItem("user" , JSON.stringify(this.currentUser)) ;  
       this.authenticated = true ; 
    }
    getToken(){
        return  "Bearer "+ this.currentUser.remember_token ; 
    }
    logout(){
        this.currentUser = undefined ; 
        this.authenticated = false; 
        localStorage.removeItem("user");
        this.router.navigate(["login"]) ;  

    }

}