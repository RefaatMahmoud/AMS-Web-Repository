import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Component, OnInit } from '@angular/core';
import { StudentsInLocationService } from '../services/student_in_location.service';
import { StudentsInLocationModel } from '../models/student_in_location.model';

@Component({
  selector: 'app-filteration',
  templateUrl: './filteration.component.html',
  styleUrls: ['./filteration.component.css']
})
export class FilterationComponent implements OnInit {

  filterForm: FormGroup;
  studentInLocation: StudentsInLocationModel [];


  constructor(private studentInLocationService: StudentsInLocationService) { }

  ngOnInit() {
    this.filterForm = new FormGroup({
      'fromdate' : new FormControl(null, Validators.required),
      'todate' : new FormControl(null, Validators.required)
    });
  }


  onSubmit(){
  
    this.studentInLocationService.getStudentsInLocation().subscribe(
      (response) =>{
        this.studentInLocation = response.data;
        

      //   for(let student of this.studentInLocation){
      //     console.log(student.id);
      //     if(student.created_at >= this.filterForm.get('fromdate').value &&
      //      student.created_at <= this.filterForm.get('todate').value){
      //       console.log(student.id);
      //     }
      // }



        console.log(this.studentInLocation);




     } ,
     (error) => console.log(error)
    );

   
    

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
