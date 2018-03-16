import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl,Validators } from '@angular/forms';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-signup-form',
  templateUrl: './signup-form.component.html',
  styleUrls: ['./signup-form.component.css']
})
export class SignupFormComponent implements OnInit {



  registerForm: FormGroup ;

  constructor(private authService: AuthService) { }

  ngOnInit() {

    this.registerForm = new FormGroup({
      'fullname': new FormControl(null,Validators.required),
      'email': new FormControl(null, [Validators.required, Validators.email]),
      'username': new FormControl(null,Validators.required),
      'password': new FormControl(null, [Validators.required, Validators.minLength(8)])
    });



  }

  onGetAccounts(){
    this.authService.getAccounts().subscribe(
      (accounts: any []) => {
        console.log(accounts);
        // here we check authentication

      }
    );
  }



}
