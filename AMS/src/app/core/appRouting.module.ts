import {NgModule} from "@angular/core" ; 
import {Routes , RouterModule} from "@angular/router" ;
import { LoginComponent } from "./login/login.component";
import { HomeComponent } from "./home/home.component";
import { AddNewMemberComponent } from "./add-new-member/add-new-member.component";
import { AuthGuard } from "./services/auth-gaurd.service";
import { NewSubjectComponent } from "./new-subject/new-subject.component";
import { SubjectTableComponent } from "./subject-table/subject-table.component";
import { IndexComponent } from "./index/index.component";
import { SubjectEditComponent } from "./subject-edit/subject-edit.component";
import { SubjectResolver } from "./services/subject.resolver.service";

const ROUTES : Routes =[
    {path : "index",component : IndexComponent , },
    { path : "login" , component : LoginComponent} , 
    {path : "new-admin" , component: AddNewMemberComponent},
    {path : "new-subject" , component: NewSubjectComponent},
    {path : ":id/edit" , component: SubjectEditComponent, resolve:{subject:SubjectResolver}},
    {path:"subject-table", component:SubjectTableComponent},
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