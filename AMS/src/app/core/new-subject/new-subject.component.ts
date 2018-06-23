import { Router, ActivatedRoute, Params } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { NewSubject } from '../services/newSubject.service';

@Component({
  selector: 'app-new-subject',
  templateUrl: './new-subject.component.html',
  styleUrls: ['./new-subject.component.css']
})
export class NewSubjectComponent implements OnInit {

  addSubjectForm: FormGroup ;
  groupNumber: string;
  constructor(private newSubject: NewSubject, 
              private router:Router, private activatedRoute: ActivatedRoute) { }

  ngOnInit() {
    this.activatedRoute.params.subscribe(
      (params: Params) => {
        this.groupNumber = params['groupNumber'];
        console.log(this.groupNumber)
      }
    );
    this.addSubjectForm = new FormGroup({
      'subjectName' : new FormControl(null, Validators.required),
      'totalMark' : new FormControl(null, Validators.required),
      'duration': new FormControl('Duration')
    });
  }


  onSubmit(){
    let data  = {
      subjectName : this.addSubjectForm.get('subjectName').value,
      totalMark : this.addSubjectForm.get('totalMark').value,
      duration : this.addSubjectForm.get('duration').value,
      groupNumber: this.groupNumber
    };

    this.newSubject.newSubject(data).subscribe(
      data => {
        console.log(data);
        this.router.navigate(["/subject-table/",this.groupNumber]);
      }
    )
    
  }

}
