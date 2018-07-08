import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Component, OnInit } from '@angular/core';
import { NewAdmin } from '../services/newAdmin.service';
import { Router } from '@angular/router';
import { RoleModel } from '../models/role.model';
import { TestService } from '../services/test.service';

@Component({
  selector: 'app-add-new-member',
  templateUrl: './add-new-member.component.html',
  styleUrls: ['./add-new-member.component.css']
})
export class AddNewMemberComponent implements OnInit {

  addMemberForm: FormGroup ;
  roles : RoleModel[] = [] ; 
  constructor(private newAdmin: NewAdmin,
  private router:Router , private testService : TestService) { }

  ngOnInit() {
    this.addMemberForm = new FormGroup({
      'username' : new FormControl(null, Validators.required),
      'email' : new FormControl(null, [Validators.required, Validators.email]),
      'password' : new FormControl(null, Validators.required),
      'role': new FormControl(null)
    });
    this.testService.getRoles().subscribe(
      res =>{
        this.roles = res.data ; 
        console.log(res) ;
      } , 
      err=> { 
        console.log(err) ; 
      }
    )
    
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
        this.router.navigate(["dashboard"]) ; 
      }
    )
    
  }

}
