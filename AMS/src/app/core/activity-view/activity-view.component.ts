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

  ngOnInit() {
    this.activityService.getActivities().subscribe(
      res => {
        console.log(res);
      },
      err => {
        console.log(err)
      }
    )
  }
  updateActivity(data: ActivityModel) {
    this.router.navigate(["activities","update"]);
  }
  addNewActivity() {
    this.router.navigate(["activities" , "new"]);
  }
  deleteActivity(data: ActivityModel) {
    // this.router.navigate(["activities",]);
    console.log("record deleted successfully !")
  }
}
