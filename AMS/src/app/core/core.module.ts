import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";
import { LoginComponent } from "./login/login.component";
import { AppRoutingModule } from "./appRouting.module";
import { HomeComponent } from './home/home.component';
import { SidebarComponent } from './sidebar/sidebar.component';




@NgModule({
    declarations: [
        LoginComponent,
        HomeComponent,
        SidebarComponent
    ],
    imports: [
        AppRoutingModule
    ] ,
    exports:[
        AppRoutingModule
    ]

})
export class CoreModule { }