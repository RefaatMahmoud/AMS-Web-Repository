import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  loginForm : FormGroup ; 
  constructor() { } 

  ngOnInit() {
    this.formInit() ; 
  }
  onSubmit(){
    console.log(this.loginForm.get("email")) ;
  }
  formInit(){
    this.loginForm = new FormGroup({
      "email" : new FormControl(null ,[Validators.required ,  Validators.email]) , 
      "password" : new FormControl(null , [Validators.required])  
    }) ; 
  }

}
