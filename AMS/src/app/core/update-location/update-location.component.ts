import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { LocationModel } from '../models/location.model';
import { LocationService } from '../services/location.service';
import { Router, ActivatedRoute, Data } from '@angular/router';

@Component({
  selector: 'app-update-location',
  templateUrl: './update-location.component.html',
  styleUrls: ['./update-location.component.css']
})
export class UpdateLocationComponent implements OnInit {
  updateLocationForm  : FormGroup ; 
  location : LocationModel; 
  constructor(private locationService : LocationService,private route : ActivatedRoute , private router : Router) { }

  ngOnInit() {
    this.route.data.subscribe(
      (res : Data)=>{
        this.location = res.admin ;
        console.log(this.location) ;
        this.formInit(this.location);
        // console.log(this.updateActivityForm.get("instructorName").value) ;
      }
      ,
      err =>{
        console.log(err) ;
      }
    )
    // this.formInit(location); 
  }
 formInit(location : LocationModel){
   this.updateLocationForm = new FormGroup({
     "locationName" : new FormControl(location.locationName , Validators.required)  
   });
 }
 onSubmit(){
   console.log(this.updateLocationForm.value) ; 
 }
}
