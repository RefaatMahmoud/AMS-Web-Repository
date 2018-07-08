import { Component, OnInit } from '@angular/core';
import { UIService } from '../services/ui.service';
import { AuthService } from '../services/auth.service';
import { Router } from '@angular/router';
import { UserModel } from '../models/user.model';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {
  user : String =''; 
  constructor(private uiService : UIService ,private router :Router  , private authService  : AuthService) { 
   
  }

  ngOnInit() {
   this.user =  this.authService.currentUser.username ;
  }
  toggleSidebar(){
    if(!this.uiService.getSidebarStatus()){
      this.uiService.sidebarStatus = true ; 
    }
  }
  logout() {
    this.authService.logout() ; 
    this.router.navigate(['/login']) ; 
  }
}
