import { SubjectModel } from './../models/subject.model';
import { ActivatedRoute, Params } from '@angular/router';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Component, OnInit, ElementRef, ViewChild, AfterViewInit } from '@angular/core';
import { StudentsInLocationService } from '../services/student_in_location.service';
import { StudentsInLocationModel } from '../models/student_in_location.model';

import { Chart } from "chart.js";
import { NewSubject } from '../services/newSubject.service';

@Component({
  selector: 'app-filteration',
  templateUrl: './filteration.component.html',
  styleUrls: ['./filteration.component.css']
})
export class FilterationComponent implements OnInit  , AfterViewInit{

  @ViewChild('canvas') canvas : ElementRef; 
  chart: Chart;
  filterForm: FormGroup;
  studentInLocation: StudentsInLocationModel[];
  subjectId:number;
  subject: SubjectModel [];
  subjectName:string;
  studentsInCurrentSubject : StudentsInLocationModel [] = [];

  constructor(private studentInLocationService: StudentsInLocationService,
              private activatedRoute:ActivatedRoute,
              private subjectService: NewSubject) { }

  ngOnInit() {
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
  }
 ngAfterViewInit(){

 }
  onSubmit() {
    var absent: number = 0;
    var present: number = 0;
    var from = new Date(Date.parse(this.filterForm.get('fromdate').value));
    var to = new Date(Date.parse(this.filterForm.get('todate').value));
    
    for(let student of this.studentsInCurrentSubject){


    var created = new Date(Date.parse(student.created_at.toString()));
    if (created.getTime() >= from.getTime() &&
      created.getTime() <= to.getTime()) {
      console.log(student.id);

      if (student.status === "0") {
        absent++;
      }
      else if (student.status === "1") {
        present++;
      } else {
        console.log("Error happens in Logic");
      }

    }

  }
  console.log(this.canvas) ;
  let ctx = this.canvas.nativeElement.getContext("2d");
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
          data: [present , absent ],
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
  console.log(present + " is Present");
  console.log(absent + " is Absent");

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
