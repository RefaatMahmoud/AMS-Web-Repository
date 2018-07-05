import { SubjectModel } from './../models/subject.model';
import { ActivatedRoute, Data, Router, Params } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { NewSubject } from '../services/newSubject.service';

@Component({
  selector: 'app-subject-edit',
  templateUrl: './subject-edit.component.html',
  styleUrls: ['./subject-edit.component.css']
})
export class SubjectEditComponent implements OnInit {
      id:number;
      groupNumber:string;
  editSubjectForm: FormGroup ;
private subject : SubjectModel;
  constructor(private newSubject: NewSubject, 
              private activatedRoute: ActivatedRoute,
            private router: Router) { }

  ngOnInit() {
this.activatedRoute.params.subscribe(
  (params: Params) =>{
  this.id = +params['id'];
  this.groupNumber = params['groupNumber'];
  }
);
    this.activatedRoute.data.subscribe(
      (data: Data) => {
        this.subject = data['subject'].data;
        console.log(this.subject)

        this.editSubjectForm = new FormGroup({
          'subjectName' : new FormControl(this.subject.subjectName, Validators.required),
          'totalMark' : new FormControl(this.subject.totalMark, Validators.required),
          'duration': new FormControl(this.subject.duration)
        });
      }
    );
console.log("GroupNumber: "+ this.groupNumber);
console.log("ID: " + this.id);
  }

  onSubmit(){
    let data  = {
      id: this.subject.id,
      subjectName : this.editSubjectForm.get('subjectName').value,
      totalMark : this.editSubjectForm.get('totalMark').value,
      duration : this.editSubjectForm.get('duration').value,
      groupNumber: this.groupNumber
    };

    this.newSubject.updateSubject(data,this.id).subscribe(
      res => {
        console.log(res) ;
        this.router.navigate(["../../"], {relativeTo:this.activatedRoute}) ; 
      }, 
      err => { 
        console.log(err) ; 
      }

    )  
    
  }
}
