import { NewSubject } from './../services/newSubject.service';
import { Component, OnInit, AfterContentInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { SubjectModel } from '../models/subject.model';
@Component({
  selector: 'app-subject-table',
  templateUrl: './subject-table.component.html',
  styleUrls: ['./subject-table.component.css']
})
export class SubjectTableComponent implements OnInit, AfterContentInit {


  name : string;
  private arr : any [];

  private subjects   : SubjectModel [];

  constructor(private router: Router,
     private activatedRoute:ActivatedRoute,
     private subjectService:NewSubject) { }

  ngOnInit() {
    this.subjectService.getSubjects().subscribe(
      (response : SubjectModel []) =>{
         this.subjects = response;
         console.log(Array.of(this.subjects))
      } ,
      (error) => console.log(error)
    );
    
  }


  ngAfterContentInit(){
    
  }

  addSubject(){
      this.router.navigate(["new-subject"]);
  }

  // getSubject(){
  //   this.subjectService.getSubjects().subscribe(
  //     (response) =>  console.log(response),
  //     (error) => console.log(error)
  //   );
  // }






}
