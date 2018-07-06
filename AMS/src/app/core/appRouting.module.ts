import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";
import { LoginComponent } from "./login/login.component";
import { HomeComponent } from "./home/home.component";
import { AddNewMemberComponent } from "./add-new-member/add-new-member.component";
import { AuthGuard } from "./services/auth-gaurd.service";
import { NewSubjectComponent } from "./new-subject/new-subject.component";
import { SubjectTableComponent } from "./subject-table/subject-table.component";
import { IndexComponent } from "./index/index.component";
import { AddNewActivityComponent } from "./add-new-activity/add-new-activity.component";
import { ActivityViewComponent } from "./activity-view/activity-view.component";
import { UpdateActivityComponent } from "./update-activity/update-activity.component";
import { ActivityResolverService } from "./services/activity-resolver.service";
import { SubjectEditComponent } from "./subject-edit/subject-edit.component";
import { SubjectResolver } from "./services/subject.resolver.service";
import { LocationViewComponent } from "./location-view/location-view.component";
import { UpdateLocationComponent } from "./update-location/update-location.component";
import { AddNewLocationComponent } from "./add-new-location/add-new-location.component";
import { LocationResolverService } from "./services/location-resolver.service";
import { FilterationComponent } from "./filteration/filteration.component";
import { AbsenceReportComponent } from "./absence-report/absence-report.component";

const ROUTES: Routes = [
    { path: "login", component: LoginComponent },
    {
        path: "", component: HomeComponent, children: [
            { path: "", component: IndexComponent, },  
            { path: "new-admin", component: AddNewMemberComponent },
            { path: "year/:groupNumber/subjects/new", component: NewSubjectComponent },
            { path: "new-admin", component: AddNewMemberComponent },    
            { path: "new-subject", component: NewSubjectComponent },
            { path: "year/:groupNumber/subjects/:id/monitor", component: FilterationComponent },
            { path: "year/:groupNumber/subjects/:id/monitor/report", component: AbsenceReportComponent },
            { path: "activities/new", component: AddNewActivityComponent },
            { path: "activities/:id", component: ActivityViewComponent },
            { path: "activities/:id/edit", component: UpdateActivityComponent, resolve: { activity: ActivityResolverService } },
            { path: "year/:groupNumber/subjects/:id/edit", component: SubjectEditComponent, resolve: { subject: SubjectResolver } },
            { path: "year/:groupNumber/subjects", component: SubjectTableComponent },
            { path: "locations", component: LocationViewComponent },
            { path: "locations/new", component: AddNewLocationComponent },
            { path: "locations/:id/edit", component: UpdateLocationComponent , resolve : {location : LocationResolverService} },

        ]
    },
]



@NgModule({
    imports: [
        RouterModule.forRoot(ROUTES)
    ],
    exports: [
        RouterModule
    ]

})
export class AppRoutingModule {

}