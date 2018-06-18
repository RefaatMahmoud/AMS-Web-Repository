import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { LocationModel } from '../models/location.model';
import { LocationService } from '../services/location.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-add-new-location',
  templateUrl: './add-new-location.component.html',
  styleUrls: ['./add-new-location.component.css']
})
export class AddNewLocationComponent implements OnInit {

  addNewLocationForm: FormGroup;
  constructor( private  locationService : LocationService , private router : Router) { }

  ngOnInit() {
    this.formInit();
  }
  formInit(){
    this.addNewLocationForm = new FormGroup({
      locationName : new FormControl(null, Validators.required)  
    });
  }
  onSubmit(){
    if(!this.addNewLocationForm.valid) {
      console.log(` Invalid Date`); 
      return ; 
    }
    else { 
      console.log(this.addNewLocationForm.value) ; 
      console.log(this.addNewLocationForm.get("locationName").dirty) ;
      this.locationService.addNewLocation(this.addNewLocationForm.value).subscribe(
        res => { 
          console.log(res) ; 
          this.router.navigate(['locations']) ; 
        }
        ,
        err=>{
          console.log(err) ; 
        }
      ) 
    }
  }

}
