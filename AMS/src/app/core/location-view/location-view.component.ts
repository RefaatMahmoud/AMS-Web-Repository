import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { LocationService } from '../services/location.service';
import { LocationModel } from '../models/location.model';

@Component({
  selector: 'app-location-view',
  templateUrl: './location-view.component.html',
  styleUrls: ['./location-view.component.css']
})
export class LocationViewComponent implements OnInit {
  locations  : LocationModel[] ; 
  constructor(private router : Router , private locationService : LocationService) { }

  ngOnInit() {
    this.locationService.getLocations().subscribe(
      res => { 
        
        console.log(res) ;

      }, 
      err => {
        console.log(err) ; 
      }
    )
  }
  addNewLocation() {
    this.router.navigate(["locations","new"]) ; 
  }
  editLocation(location : LocationModel) {
    this.router.navigate(["locations",`${location.id}`,"edit"]) ; 
  }
  deleteLocation(location  : LocationModel , index : number) {
    this.locationService.deleteLocation(location.id).subscribe(
      res=>{
        console.log("record deleted successfully !")
        this.locations.splice(index , 1) ;
      } , 
      error=>{
        console.log(error) ; 
      }
    ) ; 

  }

}
