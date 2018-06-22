import { Component, OnInit, AfterViewInit, ViewChild, ElementRef } from '@angular/core';
import { FormGroup, FormControl, Validators, AbstractControl } from '@angular/forms';
import { TestService } from '../services/test.service';
import { ActivityService } from '../services/activity.service';
import { InstructorModel } from '../models/instructor.model';
import { SubjectModel } from '../models/subject.model';
import { NewSubject } from '../services/newSubject.service';
import { Router } from '@angular/router';
import { ActivityTypeModel } from '../models/activity-type.model';
import { LocationModel } from '../models/location.model';
import { LocationService } from '../services/location.service';
import{AmazingTimePickerService} from "amazing-time-picker" ; 
import { start } from 'repl';
import { Observable } from 'rxjs';
declare var $: any;
declare var jquery: any;

@Component({
  selector: 'app-add-new-activity',
  templateUrl: './add-new-activity.component.html',
  styleUrls: ['./add-new-activity.component.css']
})
export class AddNewActivityComponent implements OnInit, AfterViewInit {
  addNewActivityForm: FormGroup;
  levels: Array<{ id: number, name: string }> =
    [
      { id: 1, name: "First" },
      { id: 2, name: "Second" },
      { id: 3, name: "Third" },
      { id: 4, name: "Fourth" },
      { id: 5, name: "Fifth" },
      { id: 6, name: "Sixth" }
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
  instructors: Array<InstructorModel>;
  subjects: Array<SubjectModel>;
  types: Array<ActivityTypeModel> = [];
  locations: Array<LocationModel>;
  @ViewChild("startTime") startTime: ElementRef;
  @ViewChild("endTime") endTime: ElementRef;

  constructor(private testService: TestService,private atp : AmazingTimePickerService ,  private locationService: LocationService, private router: Router, private subjectService: NewSubject, private activityservice: ActivityService) { }
  ngAfterViewInit() {  
  }
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
      this.addNewActivityForm.controls['endTime'].setValue(time) ;
      this.addNewActivityForm.controls['startTime'].setValue(this.startTime.nativeElement.value) ;
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
        this.addNewActivityForm.controls['startTime'].setValue(time) ;
        this.addNewActivityForm.controls['endTime'].setValue(this.endTime.nativeElement.value) ; 
               });
  

  }
  
    
      
        getAsyncTimeValidation(control : AbstractControl) : Promise<any> | Observable<any> {
          const promise = new Promise((resolve , reject)=>{
            setTimeout(()=>{
              let startTime: Array<string> = this.startTime.nativeElement.value.split(":");
             
            let endTime: Array<string> =  this.endTime.nativeElement.value.split(":");;
            
           console.log(startTime , this.endTime.nativeElement.value);
              if (parseInt(startTime[0]) === parseInt(endTime[0])) { 
                  if(parseInt(startTime[1]) < parseInt(endTime[1])){
                    console.log("start  "+false); 
                    resolve( null ); 
                   
                  }else {
                    console.log("start  "+true) ;
                    resolve( {"validTime" : true} ); 
                  }
              }else if(parseInt(startTime[0]) < parseInt(endTime[0])) {
                console.log("start  "+false) ;  
                resolve(null); 
                
              }else {   
                console.log("start  "+true) ; 
                resolve( {"validTime" : true} ); 
              }
            },100)
          })
          
          return promise ; 
          }  
  ngOnInit() {
    // this.atp.open();
    this.initForm()
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
        console.log(res.data);
        this.instructors = res.data;
      },
      err => {
        console.log(err);
      }
    );
    this.testService.getActivityTypes().subscribe(
      res => {
        console.log(res);
        this.types = res.data;
      },
      err => {
        console.log(err);
      }
    )
  }

  initForm() {
    this.addNewActivityForm = new FormGroup({
      day: new FormControl(null, Validators.required),
      instructorName: new FormControl(null, Validators.required),
      subjectName: new FormControl(null, Validators.required),
     startTime: new FormControl("00:00", [Validators.required,Validators.pattern(/^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$/),Validators.maxLength(5)],this.getAsyncTimeValidation.bind(this)),
      endTime: new FormControl("00:00", [Validators.required,Validators.pattern(/^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$/),Validators.maxLength(5)],this.getAsyncTimeValidation.bind(this)),
      Location: new FormControl(null, Validators.required),
      type: new FormControl(null, Validators.required),
      groupNumber: new FormControl(null, Validators.required)

    })
  }
  onSubmit() {
    if (!this.addNewActivityForm.valid) {
      console.log(`Invalid Data`);
      return;
    }
    else {
      console.log(this.addNewActivityForm.value);
      let data = { ...this.addNewActivityForm.value, totalMark: `${2}` };
      this.activityservice.addActivity(data).subscribe(
        res => {
          console.log(res);
          this.router.navigate(["activities"]);
        },
        err => {
          console.log(err);
        }
      );
    }
  }

}
