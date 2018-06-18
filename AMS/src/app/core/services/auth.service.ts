import { Injectable } from "@angular/core";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { AdminModel } from "../models/admin.model";
import { environment } from "../../../environments/environment";
import { Observable } from "rxjs/Observable";
import { Router } from "@angular/router";
import { UserModel } from "../models/user.model";


@Injectable()
export class AuthService {
    currentUser: UserModel;
   
    constructor(private http: HttpClient, private router: Router) { }

    login(data: { username: string, password: string }) {
        let url = environment.apiPath + "adminLogin";
        return this.http.post(url, data);
    }
    isAuthenticated() {
        if (!localStorage.getItem("user")) {
            return false;
        }
        this.currentUser= JSON.parse(localStorage.getItem("user")) ; 
        return true;
    }

    setUser(user : UserModel) {
        
            this.currentUser = user;
            localStorage.setItem("user", JSON.stringify(this.currentUser));
           
            console.log(this.currentUser);
        

    }
    getToken() {
        return "Bearer " + this.currentUser.remember_token;
    }
    logout() {
        this.currentUser = undefined;
        localStorage.removeItem("user");
        this.router.navigate(["login"]);
    }

}