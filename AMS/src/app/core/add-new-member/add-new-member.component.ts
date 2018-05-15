import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Component, OnInit } from '@angular/core';
import { NewAdmin } from '../services/newAdmin.service';

@Component({
  selector: 'app-add-new-member',
  templateUrl: './add-new-member.component.html',
  styleUrls: ['./add-new-member.component.css']
})
export class AddNewMemberComponent implements OnInit {

  addMemberForm: FormGroup ;

  constructor(private newAdmin: NewAdmin) { }

  ngOnInit() {
    this.addMemberForm = new FormGroup({
      'username' : new FormControl(null, Validators.required),
      'email' : new FormControl(null, [Validators.required, Validators.email]),
      'password' : new FormControl(null, Validators.required),
      'role': new FormControl('ROLE')
    });
  }


  onSubmit(){
    let data  = {
      username : this.addMemberForm.get('username').value,
      password : this.addMemberForm.get('password').value,
      email : this.addMemberForm.get('email').value,
      role : this.addMemberForm.get('role').value
    };

    this.newAdmin.newMember(data).subscribe(
      data => {
        console.log(data);
      }
    )
  }

}
