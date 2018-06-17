import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
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
    )
    
    
    this.subjectService.getSubjects().subscribe(
      res=>{
        console.log(res.subjects) ; 
        this.subjects = res.subjects ;
      } , 
      err => {
        console.log(err) ; 
      }
    ) ; 
    this.testService.getInstructors().subscribe(
      res=>{
        this.instructors = res.instructor ;   
        console.log(res.instructor) ; 
      } , 
      err => {
        console.log(err) ; 
      }
    ) ;
    this.testService.getActivityTypes().subscribe(
      (res )=>{
        this.types  = res.activity_Type; 
        console.log(res)
      } , 
      err => {
        console.log(err) ;
      }
    )
    this.route.data.subscribe(
      (res : Data)=>{
        this.activity = res.activity.admin ;
        console.log(this.activity) ;
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
    this.updateActivityForm = new FormGroup({
      day: new FormControl(data.day),
      subjectName: new FormControl(data.subjectName),
      instructorName: new FormControl(data.instructorName),
      startTime: new FormControl(data.startTime),
      endTime: new FormControl(data.endTime),
      Location: new FormControl(data.Location),
      type: new FormControl(data.type),
      groupNumber: new FormControl(data.groupNumber)

    }) ; 
  }
  onSubmit(){
    let data  = {...this.updateActivityForm.value ,totalMark : `${this.activity.totalMarks}` }  
    
     this.activityservice.updateActivity(data , +this.id).subscribe(
       res => {
         console.log(res) ;
         this.router.navigate(["activities"]) ;
       }
     )
  console.log(this.id);
  }

}
