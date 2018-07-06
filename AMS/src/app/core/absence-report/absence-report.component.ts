import { StudentsInLocationService } from './../services/student_in_location.service';
import { Component, OnInit } from '@angular/core';
import { StudentModel } from '../models/student.model';
import { ActivatedRoute, Params } from '@angular/router';
import { TestService } from '../services/test.service';
import { StudentsInLocationModel } from '../models/student_in_location.model';

@Component({
  selector: 'app-absence-report',
  templateUrl: './absence-report.component.html',
  styleUrls: ['./absence-report.component.css']
})
export class AbsenceReportComponent implements OnInit {
  students: StudentModel[] =[] ;
  
  studentInLocation: StudentsInLocationModel[];
  groupNumber: string;

  constructor(private activatedRoute:ActivatedRoute,
              private testService:TestService,
              private studentsInLocationService: StudentsInLocationService ) { }

  ngOnInit() {


    this.activatedRoute.params.subscribe(
      (params:Params) => {
        this.groupNumber = params['groupNumber'];

        if(this.groupNumber === '1'){
          this.testService.getStudentCount(1).subscribe(
            res =>{
              this.students = res.data ; 
            },
            err=>{
              console.log(err)
            }
          )
        }else if(this.groupNumber === '2'){
          this.testService.getStudentCount(2).subscribe(
            res =>{
              this.students = res.data ; 
            },
            err=>{
              console.log(err)
            }
          )
        }else if(this.groupNumber === '3'){
          this.testService.getStudentCount(3).subscribe(
            res =>{
              this.students = res.data ; 
            },
            err=>{
              console.log(err)
            }
          )
        }else if(this.groupNumber === '4'){
          this.testService.getStudentCount(4).subscribe(
            res =>{
              this.students = res.data ; 
            },
            err=>{
              console.log(err)
            }
          )
        }else if(this.groupNumber === '5'){
          this.testService.getStudentCount(5).subscribe(
            res =>{
              this.students = res.data ; 
            },
            err=>{
              console.log(err)
            }
          )
        }else if(this.groupNumber === '6'){
          this.testService.getStudentCount(6).subscribe(
            res =>{
              this.students = res.data ; 
            },
            err=>{
              console.log(err)
            }
          )
        }


      }
    )


    this.studentsInLocationService.getStudentsInLocation().subscribe(
      (response) => {
        this.studentInLocation = response.data;
        

      },
      (error) => console.log(error)
    );



  
  }






}
