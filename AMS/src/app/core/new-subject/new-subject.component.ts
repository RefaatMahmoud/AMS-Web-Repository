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

  constructor(private newSubject: NewSubject) { }

  ngOnInit() {
    this.addSubjectForm = new FormGroup({
      'subjectName' : new FormControl(null, Validators.required),
      'totalMark' : new FormControl(null, [Validators.required, Validators.maxLength(3)]),
      'duration': new FormControl('Duration')
    });
  }


  onSubmit(){
    let data  = {
      subjectName : this.addSubjectForm.get('subjectName').value,
      totalMark : this.addSubjectForm.get('totalMark').value,
      duration : this.addSubjectForm.get('duration').value,
      groupNumber: 5
    };

    this.newSubject.newSubject(data).subscribe(
      data => {
        console.log(data);
      }
    )
    
  }

}
