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
    var absent:number = 0;
    var present:number = 0;
    var from = new Date(Date.parse(this.filterForm.get('fromdate').value));
    var to = new Date(Date.parse(this.filterForm.get('todate').value));
    this.studentInLocationService.getStudentsInLocation().subscribe(
      (response) =>{
        this.studentInLocation = response.data;
        

        for(let student of this.studentInLocation){
          var created = new Date(Date.parse(student.created_at.toString()));
          if(created.getTime() >= from.getTime()&&   
           created.getTime() <= to.getTime()){
            console.log(student.id);

            if(student.status === "0"){
              absent++;
            }
            else if (student.status === "1"){
              present++;
            }else{
              console.log("Error happens in Logic");
            }




           }

           

          // var sCreated = Math.round(student.created_at.getTime()/1000);
         
          }
      

          console.log(present + " is Present");
          console.log(absent + " is Absent");





     //   console.log(this.studentInLocation);




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
