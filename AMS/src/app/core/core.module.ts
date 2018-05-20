import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";
import { LoginComponent } from "./login/login.component";
import { AppRoutingModule } from "./appRouting.module";
import { HomeComponent } from './home/home.component';
import { SidebarComponent } from './sidebar/sidebar.component';
import { AddNewMemberComponent } from './add-new-member/add-new-member.component';
import { ReactiveFormsModule } from '@angular/forms';
import { HeaderComponent } from './header/header.component';
import { UIService } from "./services/ui.service";
import {SharedModule} from "../shared/shared.module"
import { AuthService } from "./services/auth.service";
import { NewAdmin } from "./services/newAdmin.service";
import { HttpClientModule } from "@angular/common/http";
import { AuthGuard } from "./services/auth-gaurd.service";
import { HttpModule } from "@angular/http";
import { NewSubjectComponent } from "./new-subject/new-subject.component";
import { NewSubject } from "./services/newSubject.service";
import { SubjectTableComponent } from './subject-table/subject-table.component';






@NgModule({
    declarations: [
        LoginComponent,
        HomeComponent,
        SidebarComponent,
        AddNewMemberComponent,
        HeaderComponent,
        NewSubjectComponent,
        SubjectTableComponent,
    ],
    imports: [
        AppRoutingModule,
        ReactiveFormsModule,
        CommonModule , 
        HttpClientModule ,
        HttpModule
       
    ],
    exports:[
        AppRoutingModule
    ] , 
    providers : [
        UIService , 
        AuthGuard,
        AuthService,
        NewAdmin,
        NewSubject
        
    ]

})
export class CoreModule { }