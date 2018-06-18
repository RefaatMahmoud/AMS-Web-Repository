import { Component, OnInit } from '@angular/core';
import { TestService } from '../services/test.service';

@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.css']
})
export class IndexComponent implements OnInit {

  constructor(private testServise : TestService) { }

  ngOnInit() {
    this.testServise.getAdminCount().subscribe(
      res =>{
        console.log(res);

      },
      err=>{
console.log(err)
      }
    )
     this.testServise.getStudentCount().subscribe(
      res =>{
        console.log(res);

      },
      err=>{
        console.log(err)
      }
    )
    this.testServise.getInstructorCount().subscribe(
      res =>{
        console.log(res);

      },
      err=>{
        console.log(err)
      }
    )
  }

}
