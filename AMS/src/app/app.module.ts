import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {CoreModule} from "./core/core.module"


import { AppComponent } from './app.component';
import { AppRoutingModule } from './core/appRouting.module';
import { AuthService } from './core/services/auth.service';
import { NewAdmin } from './core/services/newAdmin.service';
// import { NewSubjectComponent } from './new-subject/new-subject.component';
// import { LoginComponent } from './core/login/login.component';


@NgModule({
  declarations: [
    AppComponent,
     
  ],
  imports: [
    BrowserModule, 
    CoreModule , 
    AppRoutingModule
   
  ],
  exports:[
    AppRoutingModule
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
