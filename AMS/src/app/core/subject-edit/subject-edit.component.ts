import { SubjectModel } from './../models/subject.model';
import { ActivatedRoute, Data } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { NewSubject } from '../services/newSubject.service';

@Component({
  selector: 'app-subject-edit',
  templateUrl: './subject-edit.component.html',
  styleUrls: ['./subject-edit.component.css']
})
export class SubjectEditComponent implements OnInit {

  editSubjectForm: FormGroup ;
private subject : SubjectModel;
  constructor(private newSubject: NewSubject, 
              private activatedRoute: ActivatedRoute) { }

  ngOnInit() {

    this.activatedRoute.data.subscribe(
      (data: Data) => {
        this.subject = data['subject'].data;
        console.log(this.subject)

        this.editSubjectForm = new FormGroup({
          'subjectName' : new FormControl(this.subject.subjectName, Validators.required),
          'totalMark' : new FormControl(this.subject.totalMark, [Validators.required, Validators.maxLength(3)]),
          'duration': new FormControl(this.subject.duration)
        });
      }
    );


    


     

  }






  onSubmit(){
   
    
  }
}
