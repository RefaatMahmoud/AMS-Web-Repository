import { Component, OnInit } from '@angular/core';
import { UIService } from '../services/ui.service';
import { AuthService } from '../services/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  constructor(private uiService : UIService ,private router :Router  , private authService  : AuthService) { }

  ngOnInit() {
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
