import { Injectable } from "@angular/core";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { AdminModel } from "../models/admin.model";
import { environment } from "../../../environments/environment";
import { Observable } from "rxjs/Observable";
import { Router, ActivatedRoute } from "@angular/router";
import { UserModel } from "../models/user.model";
import { PageModel } from "../models/page";
import { SinglePageModel } from "../models/singlePage.model";


@Injectable()
export class AuthService {
    currentUser: UserModel;

    constructor(private http: HttpClient, private router: Router, private route: ActivatedRoute) { }

    login(data: { username: string, password: string }): Observable<UserModel> {
        let url = environment.apiPath + "adminLogin";
        return this.http.post<UserModel>(url, data);
    }
    
    isAuthenticated() {
        if (!localStorage.getItem("user")) {
            return false;
        }
        this.currentUser = JSON.parse(localStorage.getItem("user"));
        return true;
    }

    setUser(user: UserModel) {
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