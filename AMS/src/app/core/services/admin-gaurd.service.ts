import{Injectable } from "@angular/core" ; 
import{AuthService} from "./auth.service" ; 
import {Router, CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot} from '@angular/router' ;
import { Observable } from "rxjs";




@Injectable()
export class AdminGaurdService implements CanActivate { 
    constructor(private authService  :AuthService , private router :Router){}
        canActivate(route : ActivatedRouteSnapshot , state : RouterStateSnapshot) : Observable<boolean>|Promise<boolean> | boolean {
            let isAuthorized : boolean = false ;
            if(this.authService.isAuthenticated()){
                
                let role = this.authService.currentUser.role;
               

                switch(role) { 
                    case '0' : 
                    isAuthorized = true ; 
                    break ; 
                    case '1' : 
                    
                    break ; 
                    case '2' : 

                    break ; 
                    case '3' : 

                    break ; 
                    case '4' : 

                    break ; 
                    case '5' :

                    break ;
                    default :
                     isAuthorized = false ;
                    break ; 

                        
                }

            }



            return isAuthorized ; 
        }

}