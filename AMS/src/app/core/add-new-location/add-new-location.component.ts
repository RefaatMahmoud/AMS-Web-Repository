import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { LocationModel } from '../models/location.model';

@Component({
  selector: 'app-add-new-location',
  templateUrl: './add-new-location.component.html',
  styleUrls: ['./add-new-location.component.css']
})
export class AddNewLocationComponent implements OnInit {

  addNewLocationForm: FormGroup;
  constructor() { }

  ngOnInit() {
    this.formInit();
  }
  formInit(){
    this.addNewLocationForm = new FormGroup({
      locationName : new FormControl(null, Validators.required)  
    });
  }
  onSubmit(){
    console.log(this.addNewLocationForm.value) ; 
    console.log(this.addNewLocationForm.get("locationName").dirty) ;
  }

}
