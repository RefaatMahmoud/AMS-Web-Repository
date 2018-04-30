import { Component, OnInit } from '@angular/core';
import { UIService } from '../services/ui.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  constructor(private uiService : UIService) { }

  ngOnInit() {
  }
  toggleSidebar(){
    if(!this.uiService.getSidebarStatus()){
      this.uiService.sidebarStatus = true ; 
    }
  }
}
