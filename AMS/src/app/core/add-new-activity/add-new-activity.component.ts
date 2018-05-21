import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { TestService } from '../services/test.service';
import { ActivityService } from '../services/activity.service';
import { InstructorModel } from '../models/instructor.model';
import { SubjectModel } from '../models/subject.model';
import { NewSubject } from '../services/newSubject.service';

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
types: Array<{ id: number, name: string }> ; 
  constructor( private testService: TestService ,private subjectService  : NewSubject ,  private activityservice :ActivityService ) { }

  ngOnInit() {
    this.initForm()
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
        console.log(res.instructors) ; 
      } , 
      err => {
        console.log(err) ; 
      }
    ) ;
  }

  initForm() {
    this.addNewActivityForm = new FormGroup({
      day: new FormControl(),
      instructorName: new FormControl(),
      subjectName: new FormControl(),
      startTime: new FormControl(null),
      endTime: new FormControl(null),
      location: new FormControl(null),
      type: new FormControl(),
      groupNumber: new FormControl()

    })
  }
  onSubmit(){
    console.log(this.addNewActivityForm.value);
  }

}
