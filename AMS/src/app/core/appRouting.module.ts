import {NgModule} from "@angular/core" ; 
import {Routes , RouterModule} from "@angular/router" ;
import { LoginComponent } from "./login/login.component";
import { HomeComponent } from "./home/home.component";
import { AddNewMemberComponent } from "./add-new-member/add-new-member.component";
import { AuthGuard } from "./services/auth-gaurd.service";

const ROUTES : Routes =[
    { path : "" , component : LoginComponent} , 
    { path : "home" , component : HomeComponent,canActivate:[AuthGuard],canActivateChild :[AuthGuard] ,children :[
        {path : "new-admin" , component: AddNewMemberComponent}
    ] } ,
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