    import {
    Router,
    CanActivate,
    RouterStateSnapshot,
    ActivatedRouteSnapshot,
    CanActivateChild
} from "@angular/router";
import { Injectable } from "@angular/core";
import { AuthService } from "./auth.service";
import { Observable } from "rxjs/Observable";

@Injectable () 
export class AuthGuard implements CanActivate , CanActivateChild{
    constructor(public router : Router ,public auth : AuthService){} 
    canActivateChild(route : ActivatedRouteSnapshot , state : RouterStateSnapshot) : Promise<boolean>|Observable<boolean>|boolean{
        return this.canActivate(route,state) ;
    }
    canActivate(route : ActivatedRouteSnapshot , state : RouterStateSnapshot) : Promise<boolean>|Observable<boolean>|boolean{
        if(!this.auth.isAuthenticated()){
            console.log(this.auth.currentUser);
            this.router.navigate(["login"]);  
            return false ; 
        }else if(this.auth.currentUser.role == "5"){
            this.router.navigate(["login"]);  
            return false ; 
        }   

        return true ; 
    } 
} 