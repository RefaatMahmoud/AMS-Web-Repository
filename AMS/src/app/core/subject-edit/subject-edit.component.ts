import { SubjectModel } from './../models/subject.model';
import { ActivatedRoute, Data, Router } from '@angular/router';
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
              private activatedRoute: ActivatedRoute,
            private router: Router) { }

  ngOnInit() {

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

  }

  onSubmit(){
    let data  = {
      id: this.subject.id,
      subjectName : this.editSubjectForm.get('subjectName').value,
      totalMark : this.editSubjectForm.get('totalMark').value,
      duration : this.editSubjectForm.get('duration').value,
      groupNumber: "5"
    };

    this.newSubject.updateSubject(data,this.subject.id).subscribe(
      data => {
        console.log(data);
        this.router.navigate(["subject-table"]);
      }
    )
    
  }
}
