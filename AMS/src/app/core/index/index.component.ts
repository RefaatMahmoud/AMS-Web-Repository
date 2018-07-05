import { Component, OnInit } from '@angular/core';
import { TestService } from '../services/test.service';
import { InstructorModel } from '../models/instructor.model';
import { StudentModel } from '../models/student.model';
import { AdminModel } from '../models/admin.model';

@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.css']
})
export class IndexComponent implements OnInit {
  instructors : InstructorModel[] =[] ; 
  student1 : StudentModel[] =[] ;
  student2 : StudentModel[] =[] ;
  student3 : StudentModel[] =[] ;
  student4 : StudentModel[] =[] ;
  student5 : StudentModel[] =[] ;
  student6 : StudentModel[] =[] ;

  admins : AdminModel[] =[] ; 
  constructor(private testServise : TestService) { }

  ngOnInit() {
    this.testServise.getAdminCount().subscribe(
      res =>{
        console.log(res);
        this.admins = res.data ; 

      },
      err=>{
console.log(err)
      }
    )
     this.testServise.getStudentCount(1).subscribe(
      res =>{
        console.log(res);
        this.student1 = res.data ; 

      },
      err=>{
        console.log(err)
      }
    )
    this.testServise.getStudentCount(2).subscribe(
      res =>{
        console.log(res);
        this.student2 = res.data ; 

      },
      err=>{
        console.log(err)
      }
    )
    this.testServise.getStudentCount(3).subscribe(
      res =>{
        console.log(res);
        this.student3 = res.data ; 

      },
      err=>{
        console.log(err)
      }
    )
    this.testServise.getStudentCount(4).subscribe(
      res =>{
        console.log(res);
        this.student4 = res.data ; 

      },
      err=>{
        console.log(err)
      }
    )
    this.testServise.getStudentCount(5).subscribe(
      res =>{
        console.log(res);
        this.student5 = res.data ; 

      },
      err=>{
        console.log(err)
      }
    )
    this.testServise.getStudentCount(6).subscribe(
      res =>{
        console.log(res);
        this.student6 = res.data ; 

      },
      err=>{
        console.log(err)
      }
    )
    this.testServise.getInstructorCount().subscribe(
      res =>{
        console.log(res);
        this.instructors = res.data ; 

      },
      err=>{
        console.log(err)
      }
    )
  }

}
