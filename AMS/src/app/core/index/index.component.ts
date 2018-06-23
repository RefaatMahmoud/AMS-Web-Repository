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
  students : StudentModel[] =[] ;
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
     this.testServise.getStudentCount().subscribe(
      res =>{
        console.log(res);
        this.students = res.data ; 

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
