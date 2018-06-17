import { Injectable } from "@angular/core";

@Injectable()
export class UIService { 
    sidebarStatus : boolean = true ;
    getSidebarStatus() {
        return this.sidebarStatus ; 
    } 
}