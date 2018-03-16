import { NgModule }             from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { SignupFormComponent } from './signup-form/signup-form.component';
import { HomeComponent } from './home/home.component';

const routes: Routes = [
    { path: 'signup', component: SignupFormComponent },
  { path: 'forgot', loadChildren: './auth/forgot/forgot.module#ForgotModule' },
  { path: 'reset', loadChildren: './auth/reset/reset.module#ResetModule' },
  { path: '', redirectTo: '/home', pathMatch: 'full'},
  { path: 'home',  component: HomeComponent }
];

@NgModule({
  imports: [ RouterModule.forRoot(routes) ],
  exports: [ RouterModule ]
})
export class AppRoutingModule {}

