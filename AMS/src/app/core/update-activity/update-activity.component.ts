import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { TestService } from '../services/test.service';
import { ActivityService } from '../services/activity.service';
import { InstructorModel } from '../models/instructor.model';
import { SubjectModel } from '../models/subject.model';
import { NewSubject } from '../services/newSubject.service';
import { ActivatedRoute, Data, Router } from '@angular/router';
import { ActivityModel } from '../models/activity.model';
import { ActivityTypeModel } from '../models/activity-type.model';


@Component({
  selector: 'app-update-activity',
  templateUrl: './update-activity.component.html',
  styleUrls: ['./update-activity.component.css']
})
export class UpdateActivityComponent implements OnInit {

  updateActivityForm: FormGroup;
  id : string ; 
  instructor : string ; 
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
  { id: 6, name: "Thursday" } ,
  { id: 7, name: "Friday" }
] ;
activity : ActivityModel ;
instructors: Array<InstructorModel> ;
subjects: Array<SubjectModel> ;
types: Array<ActivityTypeModel> ;
// types :any ; 
  constructor( private testService: TestService ,private router : Router , private route: ActivatedRoute,private subjectService  : NewSubject ,  private activityservice :ActivityService ) { }

  ngOnInit() {
    this.route.params.subscribe(
      data =>{
        this.id = data["id"] ; 
      }
    ) ; 
    this.subjectService.getSubjects().subscribe(
      res=>{
        console.log(res.data) ; 
        this.subjects = res.data ;
      } , 
      err => {
        console.log(err) ; 
      }
    ) ; 
    this.testService.getInstructors().subscribe(
      res=>{
        this.instructors = res.data ;   
        console.log(res.data) ; 
      } , 
      err => {
        console.log(err) ; 
      }
    ) ;
    this.testService.getActivityTypes().subscribe(
      (res )=>{
        this.types  = res.data; 
        console.log(res)
      } , 
      err => {
        console.log(err) ;
      }
    )
    this.route.data.subscribe(
      (res : Data)=>{
        console.log(res) ;
        this.activity = res.activity.data ;
        this.initForm(this.activity);
        // console.log(this.updateActivityForm.get("instructorName").value) ;
      }
      ,
      err =>{
        console.log(err) ;
      }
    )
  }

  initForm(data : ActivityModel) {
    let instructor  : any;
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
      day: new FormControl(data.day,Validators.required),
      subjectName: new FormControl(data.subjectName,Validators.required),
      instructorName: new FormControl(instructor,Validators.required),
      startTime: new FormControl(data.startTime,Validators.required),
      endTime: new FormControl(data.endTime,Validators.required),
      Location: new FormControl(data.Location,Validators.required),
      type: new FormControl(data.type,Validators.required),
      groupNumber: new FormControl(data.groupNumber,Validators.required)

    }) ; 
  }
  onSubmit(){
    let data  = {...this.updateActivityForm.value ,totalMark : `${this.activity.totalMarks}` }  
    
    if(!this.updateActivityForm.valid){
      console.log("Invalid Data !") ; 
      return ;
    }else {
      console.log(this.updateActivityForm.valid) ; 
      this.activityservice.updateActivity(data , +this.id).subscribe(
        res => {
          console.log(res) ;
          this.router.navigate(["activities"]) ;
        } , 
        err=> { 
          console.log(err) ; 
        }
      )
    }
  }

}
