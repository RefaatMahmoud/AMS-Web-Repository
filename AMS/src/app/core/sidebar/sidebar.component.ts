import { Component, OnInit } from '@angular/core';
import { UIService } from '../services/ui.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {
  constructor(public uiService : UIService ,private route : ActivatedRoute ,private router :Router ) { }

  ngOnInit() {
  }

  toggleSidebar(){
    console.log("toggle")
    if(this.uiService.getSidebarStatus()){
      console.log(true);
      this.uiService.sidebarStatus = false ; 
    }
  }

  navigateTo(){
    // this.router.navigate([addr]) ; 
    console.log(this.router.url) ; 
  }
}
