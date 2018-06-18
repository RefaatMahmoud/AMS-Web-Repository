import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { TestService } from '../services/test.service';
import { ActivityService } from '../services/activity.service';
import { InstructorModel } from '../models/instructor.model';
import { SubjectModel } from '../models/subject.model';
import { NewSubject } from '../services/newSubject.service';
import { Router } from '@angular/router';
import { ActivityTypeModel } from '../models/activity-type.model';

@Component({
  selector: 'app-add-new-activity',
  templateUrl: './add-new-activity.component.html',
  styleUrls: ['./add-new-activity.component.css']
})
export class AddNewActivityComponent implements OnInit {
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
  { id: 5, name: "Wednesdat" }, 
  { id: 6, name: "Thursday" } ,
  { id: 7, name: "Friday" }
] ;
instructors: Array<InstructorModel> ;
subjects: Array<SubjectModel> ;
types: Array<ActivityTypeModel> = [ ] ; 
  constructor( private testService: TestService,private router :Router ,private subjectService  : NewSubject ,  private activityservice :ActivityService ) { }

  ngOnInit() {
    this.initForm()
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
        console.log(res.data) ; 
        this.instructors = res.data ;
      } , 
      err => {
        console.log(err); 
      }
    ) ;
    this.testService.getActivityTypes().subscribe(
      res => {
        console.log(res) ;  
        this.types = res.data ; 
      } , 
      err=>{
        console.log(err) ;
      }
    )
  }

  initForm() {
    this.addNewActivityForm = new FormGroup({
      day: new FormControl(null,Validators.required),
      instructorName: new FormControl(null,Validators.required),
      subjectName: new FormControl(null,Validators.required),
      startTime: new FormControl(null,Validators.required),
      endTime: new FormControl(null,Validators.required),
      Location: new FormControl(null,Validators.required),
      type: new FormControl(null,Validators.required),
      groupNumber: new FormControl(null,Validators.required)

    })
  }
  onSubmit(){
   if(!this.addNewActivityForm.valid) {
     console.log(`Invalid Data`) ;  
     return ; 
   }
   else { 
    console.log(this.addNewActivityForm.value);
    let data = {...this.addNewActivityForm.value , totalMark :`${2}`} ;
    this.activityservice.addActivity(data).subscribe(
      res =>{ 
        console.log(res) ;
        this.router.navigate(["activities"]) ;
      } , 
      err => { 
        console.log(err) ; 
      }
    ) ;
   }
  }

}
