import {NgModule} from "@angular/core" ; 
import {Routes , RouterModule} from "@angular/router" ;
import { LoginComponent } from "./login/login.component";
import { HomeComponent } from "./home/home.component";
import { AddNewMemberComponent } from "./add-new-member/add-new-member.component";
import { AuthGuard } from "./services/auth-gaurd.service";
import { NewSubjectComponent } from "../new-subject/new-subject.component";

const ROUTES : Routes =[
    { path : "login" , component : LoginComponent} , 
    {path : "new-admin" , component: AddNewMemberComponent},
    {path : "new-subject" , component: NewSubjectComponent},

    { path : "" , component : HomeComponent,canActivateChild:[AuthGuard],children :[
        
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