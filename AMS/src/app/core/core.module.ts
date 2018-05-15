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
import {HttpModule} from "@angular/http" ; 
import { AuthService } from "./services/auth.service";
import { HttpClientModule } from "@angular/common/http";
import { AuthGuard } from "./services/auth-gaurd.service";





@NgModule({
    declarations: [
        LoginComponent,
        HomeComponent,
        SidebarComponent,
        AddNewMemberComponent,
        HeaderComponent
    ],
    imports: [
        AppRoutingModule,
        ReactiveFormsModule,
        CommonModule , 
        HttpClientModule 
       
    ],
    exports:[
        AppRoutingModule
    ] , 
    providers : [
        UIService , 
        AuthService ,
        AuthGuard
    ]

})
export class CoreModule { }