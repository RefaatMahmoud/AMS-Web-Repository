import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { AuthService } from '../services/auth.service';
import { Router, ActivatedRoute } from '@angular/router';
import { UserModel } from '../models/user.model';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  loginForm: FormGroup;
  constructor(private auth: AuthService,private route : ActivatedRoute ,private router : Router) { }

  ngOnInit() {
    this.formInit();
  }
  onSubmit() {
    let data = { 
      username: this.loginForm.get("email").value, 
    password: this.loginForm.get("password").value }
    console.log(data);
    // this.router.navigate(['home']) ; 
    this.auth.login(data).subscribe(
      (res : UserModel) =>{
        if(res instanceof UserModel)
        this.router.navigate(['home']) ; 
        console.log(res) ;
      } , 
      err=>{
        // this.router.navigate(['home']) ; 
        console.log(err) ;
      }
    )
  }
  formInit() {
    this.loginForm = new FormGroup({
      "email": new FormControl(null, [Validators.required]),
      "password": new FormControl(null, [Validators.required, Validators.minLength(4)])
    });
  }

}
