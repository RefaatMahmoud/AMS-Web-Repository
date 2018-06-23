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
import { SharedModule } from "../shared/shared.module"
import { AuthService } from "./services/auth.service";
import { NewAdmin } from "./services/newAdmin.service";
import { HttpClientModule } from "@angular/common/http";
import { AuthGuard } from "./services/auth-gaurd.service";
import { HttpModule } from "@angular/http";
import { NewSubjectComponent } from "./new-subject/new-subject.component";
import { NewSubject } from "./services/newSubject.service";
import { SubjectTableComponent } from './subject-table/subject-table.component';
import {AmazingTimePickerModule} from "amazing-time-picker" ; 
import { IndexComponent } from './index/index.component';
import { AddNewActivityComponent } from './add-new-activity/add-new-activity.component';
import { ActivityService } from "./services/activity.service";
import { TestService } from "./services/test.service";
import { ActivityViewComponent } from './activity-view/activity-view.component';
import { UpdateActivityComponent } from './update-activity/update-activity.component';
import { ActivityResolverService } from "./services/activity-resolver.service";
import { SubjectResolver } from "./services/subject.resolver.service";
import { SubjectEditComponent } from './subject-edit/subject-edit.component';
import { LocationViewComponent } from './location-view/location-view.component';
import { AddNewLocationComponent } from './add-new-location/add-new-location.component';
import { UpdateLocationComponent } from './update-location/update-location.component';
import {LocationService} from "./services/location.service"
import { LocationResolverService } from "./services/location-resolver.service";






@NgModule({
    declarations: [
        LoginComponent,
        HomeComponent,
        SidebarComponent,
        AddNewMemberComponent,
        HeaderComponent,
        NewSubjectComponent,
        SubjectTableComponent,
        IndexComponent,
        AddNewActivityComponent,
        ActivityViewComponent,
        UpdateActivityComponent,
        SubjectEditComponent,
        LocationViewComponent,
        AddNewLocationComponent,
        UpdateLocationComponent,
    ],
    imports: [
        AppRoutingModule,
        ReactiveFormsModule,
        CommonModule,
        HttpClientModule,
        HttpModule,
        AmazingTimePickerModule

    ],
    exports: [
        AppRoutingModule
    ],
    providers: [
        UIService,
        AuthGuard,
        AuthService,
        NewAdmin,
        NewSubject , 
        ActivityService , 
        TestService  , 
        ActivityResolverService,
        SubjectResolver , 
        LocationService , 
        LocationResolverService

    ]

})
export class CoreModule { }