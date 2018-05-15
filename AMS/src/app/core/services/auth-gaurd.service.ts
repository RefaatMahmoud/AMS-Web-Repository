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
    constructor(private router : Router ,private auth : AuthService){} 
    canActivateChild(route : ActivatedRouteSnapshot , state : RouterStateSnapshot) : Promise<boolean>|Observable<boolean>|boolean{
        return this.canActivate(route,state) ;
    }
    canActivate(route : ActivatedRouteSnapshot , state : RouterStateSnapshot) : Promise<boolean>|Observable<boolean>|boolean{
        if(!this.auth.isAuthenticated()){
            this.router.navigate([""]);     
            return false ; 
             
        } 
        this.router.navigate(["home"]);  
        return true ; 
    } 
} 