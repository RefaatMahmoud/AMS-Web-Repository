import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ActivityService } from '../services/activity.service';
import { ActivityModel } from '../models/activity.model';

@Component({
  selector: 'app-activity-view',
  templateUrl: './activity-view.component.html',
  styleUrls: ['./activity-view.component.css']
})
export class ActivityViewComponent implements OnInit {

  constructor(private router: Router, private activityService: ActivityService) { }
  activities : Array<ActivityModel> ; 
  ngOnInit() {
    this.activityService.getActivities().subscribe(
      res => {
        console.log(res.schedule);
        this.activities = res.schedule ;
      },
      err => {
        console.log(err)
      }
    )
  }
  editActivity(data: ActivityModel) {
    this.router.navigate(["activities",`${data.id}`,"edit" ]);
  }
  addNewActivity() {
    this.router.navigate(["activities","new"]);
  }
  deleteActivity(data: ActivityModel, index : number) {
    // this.router.navigate(["activities",]);
    console.log("record deleted successfully !") ; 
    //  this.activities.splice(index , 1) ; 
     this.activityService.deleteActivity(data.id).subscribe(
       res =>{
        this.activities.splice(index , 1) ;  
        console.log("record deleted successfully !") ; 
      }
       , 
       err => {
         console.log(err) ;
       }
     ) ; 
  }
}
