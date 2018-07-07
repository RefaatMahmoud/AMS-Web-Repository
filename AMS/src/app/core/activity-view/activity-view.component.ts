import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute, Data } from '@angular/router';
import { ActivityService } from '../services/activity.service';
import { ActivityModel } from '../models/activity.model';

@Component({
  selector: 'app-activity-view',
  templateUrl: './activity-view.component.html',
  styleUrls: ['./activity-view.component.css']
})
export class ActivityViewComponent implements OnInit {
  id: number;
  isloading : boolean = true ; 
  constructor(private router: Router,private route : ActivatedRoute ,  private activityService: ActivityService) { }
  activities : Array<ActivityModel> ; 
  
  ngOnInit() {
    this.route.params.subscribe(
     ( res : Data) =>{
      this.id = res['id'] ; 
      this.activityService.getLevelActivities(this.id).subscribe(
        res => {
          this.isloading = false ;
          console.log(res.data);
          this.activities = res.data ;
        },
        err => {
          console.log(err)
        }
      )
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
