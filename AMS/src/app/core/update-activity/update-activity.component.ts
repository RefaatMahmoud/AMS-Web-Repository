import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
import { FormGroup, FormControl, Validators, AbstractControl } from '@angular/forms';
import { TestService } from '../services/test.service';
import { ActivityService } from '../services/activity.service';
import { InstructorModel } from '../models/instructor.model';
import { SubjectModel } from '../models/subject.model';
import { NewSubject } from '../services/newSubject.service';
import { ActivatedRoute, Data, Router } from '@angular/router';
import { ActivityModel } from '../models/activity.model';
import { ActivityTypeModel } from '../models/activity-type.model';
import { LocationService } from '../services/location.service';
import { LocationModel } from '../models/location.model';
import { AmazingTimePickerService } from "amazing-time-picker";
import { Observable } from 'rxjs';


@Component({
  selector: 'app-update-activity',
  templateUrl: './update-activity.component.html',
  styleUrls: ['./update-activity.component.css']
})
export class UpdateActivityComponent implements OnInit {

  updateActivityForm: FormGroup;
  id: string;
  instructor: string;
  levels: Array<{ id: string, name: string }> =
    [
      { id: "1", name: "First" },
      { id: "2", name: "Second" },
      { id: "3", name: "Third" },
      { id: "4", name: "Fourth" },
      { id: "5", name: "Fifth" },
      { id: "6", name: "Sixth" }
    ];
  days: Array<{ id: number, name: string }> =
    [
      { id: 1, name: "Saturday" },
      { id: 2, name: "Sunday" },
      { id: 3, name: "Monday" },
      { id: 4, name: "Tuesday" },
      { id: 5, name: "Wednesday" },
      { id: 6, name: "Thursday" },
      { id: 7, name: "Friday" }
    ];
  activity: ActivityModel;
  instructors: Array<InstructorModel>;
  subjects: Array<SubjectModel>;
  types: Array<ActivityTypeModel>;
  locations: Array<LocationModel>
  @ViewChild("startTime") startTime: ElementRef;
  @ViewChild("endTime") endTime: ElementRef;
  // types :any ; 
  constructor(private testService: TestService, private atp: AmazingTimePickerService, private locationService: LocationService, private router: Router, private route: ActivatedRoute, private subjectService: NewSubject, private activityservice: ActivityService) { }
  setEndTime() {
    const amazingTimePicker = this.atp.open(
      {
        theme: 'dark',  // Default: 'light'
        arrowStyle: {
          background: '#00b7cb',
          color: 'white'
        }
      }
    );
    amazingTimePicker.afterClose().subscribe(time => {
      this.updateActivityForm.controls['endTime'].setValue(time);
      this.updateActivityForm.controls['startTime'].setValue(this.startTime.nativeElement.value);
    });
  }
  setStartTime() {

    const amazingTimePicker = this.atp.open(
      {
        theme: 'dark',  // Default: 'light'
        // Default: 'en'
        arrowStyle: {
          background: '#00b7cb',
          color: 'white'
        }
      }
    );
    amazingTimePicker.afterClose().subscribe(time => {
      this.updateActivityForm.controls['startTime'].setValue(time);
      this.updateActivityForm.controls['endTime'].setValue(this.endTime.nativeElement.value);
    });


  }

  getAsyncTimeValidation(control: AbstractControl): Promise<any> | Observable<any> {
    const promise = new Promise((resolve, reject) => {
      setTimeout(() => {
        let startTime: Array<string> = this.startTime.nativeElement.value.split(":");

        let endTime: Array<string> = this.endTime.nativeElement.value.split(":");;

        console.log(startTime, this.endTime.nativeElement.value);
        if (parseInt(startTime[0]) === parseInt(endTime[0])) {
          if (parseInt(startTime[1]) < parseInt(endTime[1])) {
            console.log("start  " + false);
            resolve(null);

          } else {
            console.log("start  " + true);
            resolve({ "validTime": true });
          }
        } else if (parseInt(startTime[0]) < parseInt(endTime[0])) {
          console.log("start  " + false);
          resolve(null);

        } else {
          console.log("start  " + true);
          resolve({ "validTime": true });
        }
      }, 100)
    })

    return promise;
  }


  ngOnInit() {
    this.route.params.subscribe(
      data => {
        this.id = data["id"];
      }
    );
    this.subjectService.getSubjects().subscribe(
      res => {
        console.log(res.data);
        this.subjects = res.data;
      },
      err => {
        console.log(err);
      }
    );
    this.locationService.getLocations().subscribe(
      res => {
        console.log(res);
        this.locations = res.data;
      },
      err => {
        console.log(err);
      }
    )
    this.testService.getInstructors().subscribe(
      res => {
        this.instructors = res.data;
        console.log(res.data);
      },
      err => {
        console.log(err);
      }
    );
    this.testService.getActivityTypes().subscribe(
      (res) => {
        this.types = res.data;
        console.log(res)
      },
      err => {
        console.log(err);
      }
    )
    this.route.data.subscribe(
      (res: Data) => {
        console.log(res);
        this.activity = res.activity.data;
        this.initForm(this.activity);
      }
      ,
      err => {
        console.log(err);
      }
    )
  }

  initForm(data: ActivityModel) {
    let instructor: any;
    // let isInstructor:boolean = false ;  
    // this.instructors.forEach((item)=>{
    //   if(data.instructorName === item.name){
    //     isInstructor = true ; 
    //     return ; 
    //   }
    // }); 
    // console.log(isInstructor) ; 
    // if(isInstructor) { 
    //   instructor = data.instructorName ; 
    // }else { 
    //   instructor = null ; 
    // }
    this.updateActivityForm = new FormGroup({
      day: new FormControl(data.day, Validators.required),
      subjectName: new FormControl(data.subjectName, Validators.required),
      instructorName: new FormControl(instructor, Validators.required),
      endTime: new FormControl(data.endTime, [Validators.required, Validators.pattern(/^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$/), Validators.maxLength(5)], this.getAsyncTimeValidation.bind(this)),
      startTime: new FormControl(data.startTime, [Validators.required, Validators.pattern(/^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$/), Validators.maxLength(5)], this.getAsyncTimeValidation.bind(this)),
      Location: new FormControl(data.Location, Validators.required),
      type: new FormControl(data.type, Validators.required),
      groupNumber: new FormControl(data.groupNumber, Validators.required)

    });
  }
  onSubmit() {
    console.log(this.updateActivityForm);
    let data = { ...this.updateActivityForm.value, totalMark: `${this.activity.totalMarks}` }

    if (!this.updateActivityForm.valid) {
      console.log("Invalid Data !");
      return;
    } else {
      console.log(this.updateActivityForm.valid);
      this.activityservice.updateActivity(data, +this.id).subscribe(
        res => {
          console.log(res);
          this.router.navigate(["../"] , {relativeTo : this.route});
        },
        err => {
          console.log(err);
        }
      )
    }
  }

}
