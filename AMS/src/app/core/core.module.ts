import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";
import { LoginComponent } from "./login/login.component";
import { AppRoutingModule } from "./appRouting.module";
import { HomeComponent } from './home/home.component';
import { SidebarComponent } from './sidebar/sidebar.component';
import { AddNewMemberComponent } from './add-new-member/add-new-member.component';
import { ReactiveFormsModule } from '@angular/forms';




@NgModule({
    declarations: [
        LoginComponent,
        HomeComponent,
        SidebarComponent,
        AddNewMemberComponent
    ],
    imports: [
        AppRoutingModule,
        ReactiveFormsModule,
        CommonModule
    ] ,
    exports:[
        AppRoutingModule
    ]

})
export class CoreModule { }