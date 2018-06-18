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
  id : number ;  
  constructor(private locationService : LocationService,private route : ActivatedRoute , private router : Router) { }

  ngOnInit() {
    this.route.params.subscribe(
      data=>{
        this.id = data['id'] ;
      }
    )
    this.route.data.subscribe(
      (res : Data)=>{
        console.log(res) ;
        this.location = res.location.data;
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
     "locationName" : new FormControl(location.locationName, Validators.required)  
   });
 }
 onSubmit(){
   if(!this.updateLocationForm.valid){
   console.log(`Invalid Data !`) ; 
   return ;   
   }
   else { 
    this.locationService.updateLocation(this.id , this.updateLocationForm.value).subscribe(
      res => {
        console.log(res) ;
        this.router.navigate(["locations"]) ; 
      }, 
      err => { 
        console.log(err) ; 
      }

    )  
   }
   
   
 }
}
