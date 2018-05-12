import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  loginForm: FormGroup;
  constructor(private auth: AuthService) { }

  ngOnInit() {
    this.formInit();
  }
  onSubmit() {
    let data = { 
      username: this.loginForm.get("email").value, 
    password: this.loginForm.get("password").value }
    console.log(data);
    this.auth.login(data).subscribe(
      data =>{
        
        console.log(data) ;
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
