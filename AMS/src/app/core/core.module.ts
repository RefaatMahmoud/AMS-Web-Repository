import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";
import { LoginComponent } from "./login/login.component";
import { AppRoutingModule } from "./appRouting.module";
import { HomeComponent } from './home/home.component';
import { SidebarComponent } from './sidebar/sidebar.component';
import { HeaderComponent } from './header/header.component';
import { UIService } from "./services/ui.service";
import {SharedModule} from "../shared/shared.module"





@NgModule({
    declarations: [
        LoginComponent,
        HomeComponent,
        SidebarComponent,
        HeaderComponent
    ],
    imports: [
        AppRoutingModule , 
        CommonModule , 
        SharedModule , 
    ] ,
    exports:[
        AppRoutingModule
    ] , 
    providers : [
        UIService
    ]

})
export class CoreModule { }