import {NgModule} from "@angular/core" ; 
import {Routes , RouterModule} from "@angular/router" ;
import { LoginComponent } from "./login/login.component";
import { HomeComponent } from "./home/home.component";

const ROUTES : Routes =[
    { path : "home" , component : LoginComponent} , 
    // {path : "new-admin" , component: AddNewAdminComponent},
    { path : "" , component : HomeComponent} ,
]



@NgModule({
    imports : [
        RouterModule.forRoot(ROUTES)
    ] , 
    exports:[
        RouterModule
    ]

})
export class AppRoutingModule { 

}