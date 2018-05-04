import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-add-new-member',
  templateUrl: './add-new-member.component.html',
  styleUrls: ['./add-new-member.component.css']
})
export class AddNewMemberComponent implements OnInit {

  addMemberForm: FormGroup ;

  constructor() { }

  ngOnInit() {
    this.addMemberForm = new FormGroup({
      'username' : new FormControl(null, Validators.required),
      'email' : new FormControl(null, [Validators.required, Validators.email]),
      'password' : new FormControl(null, Validators.required),
      'role': new FormControl('ROLE')
    });
  }


  onSubmit(){
    console.log(this.addMemberForm)
  }

}
