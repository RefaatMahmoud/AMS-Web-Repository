import { TestService } from './../services/test.service';
import { SubjectModel } from './../models/subject.model';
import { ActivatedRoute, Params } from '@angular/router';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Component, OnInit, ElementRef, ViewChild, AfterViewInit } from '@angular/core';
import { StudentsInLocationService } from '../services/student_in_location.service';
import { StudentsInLocationModel } from '../models/student_in_location.model';

import { Chart } from "chart.js";
import { NewSubject } from '../services/newSubject.service';
import { StudentModel } from '../models/student.model';

@Component({
  selector: 'app-filteration',
  templateUrl: './filteration.component.html',
  styleUrls: ['./filteration.component.css']
})
export class FilterationComponent implements OnInit  , AfterViewInit{

  @ViewChild('canvas1') canvas1 : ElementRef; 
  @ViewChild('canvas2') canvas2 : ElementRef; 

  chart: Chart;
  filterForm: FormGroup;
  studentInLocation: StudentsInLocationModel[];
  subjectId:number;
  subject: SubjectModel [];
  subjectName:string;
  studentsInCurrentSubject : StudentsInLocationModel [] = [];
  student1 : StudentModel[] =[] ;
  student2 : StudentModel[] =[] ;
  student3 : StudentModel[] =[] ;
  student4 : StudentModel[] =[] ;
  student5 : StudentModel[] =[] ;
  student6 : StudentModel[] =[] ;
  groupNumber: string;
  length1:number=0;
  length2:number=0;
  length3:number=0;
  length4:number=0;
  length5:number=0;
  length6:number=0;

  studentsInYear : StudentModel [];

  lectureAbsentStudents:StudentModel [] = [];

  absentArray: StudentModel [] =[];

  constructor(private studentInLocationService: StudentsInLocationService,
              private activatedRoute:ActivatedRoute,
              private subjectService: NewSubject,
              private testService:TestService ) { }

  ngOnInit() {
    this.testService.getStudentCount(1).subscribe(
      res =>{
        
        this.student1 = res.data ; 
        this.length1 = this.student1.length;
      },
      err=>{
        console.log(err)
      }
    )
    this.testService.getStudentCount(2).subscribe(
      res =>{
        
        this.student2 = res.data ; 
        this.length2 = this.student2.length;

      },
      err=>{
        console.log(err)
      }
    )
    this.testService.getStudentCount(3).subscribe(
      res =>{
        
        this.student3 = res.data ; 
        this.length3 = this.student3.length;

      },
      err=>{
        console.log(err)
      }
    )
    this.testService.getStudentCount(4).subscribe(
      res =>{
        
        this.student4 = res.data ; 
        this.length4= this.student4.length;

      },
      err=>{
        console.log(err)
      }
    )
    this.testService.getStudentCount(5).subscribe(
      res =>{
        
        this.student5 = res.data ; 
        this.length5 = this.student5.length;

      },
      err=>{
        console.log(err)
      }
    )
    this.testService.getStudentCount(6).subscribe(
      res =>{
        
        this.student6 = res.data ; 
        this.length6 = this.student6.length;

      },
      err=>{
        console.log(err)
      }
    )
    this.filterForm = new FormGroup({
      'fromdate': new FormControl(null, Validators.required),
      'todate': new FormControl(null, Validators.required)
    });
    this.activatedRoute.params.subscribe(
      (params: Params) => {
        this.subjectId = +params['id'];
        this.subjectService.getSubject(this.subjectId).subscribe(
          (response) =>{
             this.subject = response.data;
              this.subjectName = this.subject['subjectName'];
            // students in location subscription
            this.studentInLocationService.getStudentsInLocation().subscribe(
              (response) => {
                this.studentInLocation = response.data;
        
            var currentStudentNumber: number = 0;
            
                for (let student of this.studentInLocation) {
        
                 if(student.subjectName === this.subjectName){
                   this.studentsInCurrentSubject.push(student);
                   currentStudentNumber++;
                 }
                }
                console.log("Current students is: " + currentStudentNumber);

              },
              (error) => console.log(error)
            );
            // end inner subscription
            } ,
          (error) => console.log(error)
        );
      }
    );
    this.activatedRoute.params.subscribe(
      (params:Params) => {
        this.groupNumber = params['groupNumber'];
        this.testService.getStudentCount(+this.groupNumber).subscribe(
          res=>{
            this.studentsInYear = res.data;
            console.log("Students in Year ("+this.groupNumber+") : "+this.studentsInYear);

          },
          err=>{
            console.log("ERROR: "+err);
          }
        )
      }
    )
    console.log("GroupNumber: "+ this.groupNumber);

  }
 ngAfterViewInit(){

 }
  onSubmit() {
var absentCount:number=0;

    var flag:boolean = false;
    var absentLecture: number = 0;
    var presentLecture: number = 0;
    var presentSection: number = 0;
    var absentSection: number = 0;
    var from = new Date(Date.parse(this.filterForm.get('fromdate').value));
    var to = new Date(Date.parse(this.filterForm.get('todate').value));
    




    for(let student of this.studentsInCurrentSubject){


    var created = new Date(Date.parse(student.created_at.toString()));
    if (created.getTime() >= from.getTime() &&
      created.getTime() <= to.getTime()) {
      console.log("Student Exist: "+student.name);




      flag = true;

    


      if(student.activityType === "lecture" && student.status === "0"){
        absentLecture++;
      } else if (student.activityType === "lecture" && student.status === "1"){
        presentLecture++;
      } else if (student.activityType === "section" && student.status === "0"){
        absentSection++;
      } else if (student.activityType === "section" && student.status === "1"){
        presentSection++;
      }


    

    }

    for(let studentInYear of this.studentsInYear){
      if(student.name === studentInYear.name){
        absentCount++;
      } 

      
    }


  }
  if(flag){
  if(this.groupNumber === "1") {
    absentLecture += this.length1;
    absentSection += this.length1;
  }else if(this.groupNumber === "2") {
    absentLecture += this.length2;
    absentSection += this.length2;
  }else if(this.groupNumber === "3") {
    absentLecture += this.length3;
    absentSection += this.length3;
  }else if(this.groupNumber === "4") {
    absentLecture += this.length4;
    absentSection += this.length4;
  }else if(this.groupNumber === "5") {
    absentLecture += this.length5;
    absentSection += this.length5;
  }else if(this.groupNumber === "6") {
    absentLecture += this.length6;
    absentSection += this.length6;
  }
}



console.log("Absent count:"+absentCount);


  console.log(this.canvas1) ;
  console.log(this.canvas2) ;

  let ctx = this.canvas1.nativeElement.getContext("2d");
  this.chart = new Chart(ctx,
    {
      type: 'pie',

      // The data for our dataset
      data: {
        labels: ["present", "absence"],
        datasets: [{
          label: "My First dataset",
          fill: false,
          // backgroundColor: 'rgb(255, 99, 132)',
          backgroundColor: ['green','red'],
          borderColor: 'rgb(255, 99, 132)',
          data: [presentLecture , absentLecture ],
        // },
        // {
        //   label: "My First dataset",
        //   fill: false,
        //   // backgroundColor: 'rgb(255, 99, 132)',
        //   borderColor: 'rgb(255, 99, 002)',
        //   data: [absent],
        }
        ]
      },

      // Configuration options go here
      options: {}
    }
  )


  let ctx2 = this.canvas2.nativeElement.getContext("2d");



  this.chart = new Chart(ctx2,
    {
      type: 'pie',

      // The data for our dataset
      data: {
        labels: ["present", "absence"],
        datasets: [{
          label: "My First dataset",
          fill: false,
          // backgroundColor: 'rgb(255, 99, 132)',
          backgroundColor: ['green','red'],
          borderColor: 'rgb(255, 99, 132)',
          data: [presentSection , absentSection ],
        // },
        // {
        //   label: "My First dataset",
        //   fill: false,
        //   // backgroundColor: 'rgb(255, 99, 132)',
        //   borderColor: 'rgb(255, 99, 002)',
        //   data: [absent],
        }
        ]
      },

      // Configuration options go here
      options: {}
    }
  )

  


  console.log(presentLecture + " are  Present in Lectures");
  console.log(absentLecture + " are Absent in Lectures");
  console.log(presentSection + " are Present in Sections");
  console.log(absentSection + " are Absent in Section");


  }


  // filterStudentInLocation(sutudentsInLocation:StudentsInLocationModel []){

  //  var arr : StudentsInLocationModel [];
  //   for(let student of this.studentInLocation){
  //       if(student.created_at < this.filterForm.get('fromdate').value &&
  //        student.created_at > this.filterForm.get('todate').value){
  //         arr.push(student);
  //       }
  //   }
  //   return arr;
  // }

  


}
