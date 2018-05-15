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
<<<<<<< HEAD
import { HttpClientModule } from "@angular/common/http";
import { AuthGuard } from "./services/auth-gaurd.service";
=======
import { NewAdmin } from "./services/newAdmin.service";
// import { HttpModule } from "@angular/common/http";
>>>>>>> d9bdb10d42832c16eab33089778935c2632d5600





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
<<<<<<< HEAD
        AuthService ,
        AuthGuard
=======
        AuthService,
        NewAdmin
        
>>>>>>> d9bdb10d42832c16eab33089778935c2632d5600
    ]

})
export class CoreModule { }