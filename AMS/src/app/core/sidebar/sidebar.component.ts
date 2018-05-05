import { Component, OnInit } from '@angular/core';
import { UIService } from '../services/ui.service';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {

  constructor(public uiService : UIService) { }

  ngOnInit() {
  }

  toggleSidebar(){
    console.log("toggle")
    if(this.uiService.getSidebarStatus()){
      console.log(true);
      this.uiService.sidebarStatus = false ; 
    }
  }
}
