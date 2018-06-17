import {Injectable} from  "@angular/core" ; 
import {HttpClient} from "@angular/common/http" ; 
import {environment} from "../../../environments/environment";
import { LocationModel } from "../models/location.model";
@Injectable()
export class LocationService { 
    constructor(private http : HttpClient) {}

    getLocations() { 
        let url =  `${environment.apiPath}locationsName` ; 
        return this.http.get(url) ; 
    }
    addNewLocation(data) { 
        let url =  `${environment.apiPath}locationsName` ; 
        return this.http.post<LocationModel>(url,data) ; 
    }
    getLocation(id :number) { 
        let url =  `${environment.apiPath}locationsName/${id}` ; 
        return this.http.get(url) ; 
    }
    updateLocation(id : number , data) { 
        let url =  `${environment.apiPath}locationsName/${id}` ; 
        return this.http.put<LocationModel>(url,data) ; 
    }
    deleteLocation(id : number) { 
        let url =  `${environment.apiPath}locationsName/${id}` ; 
        return this.http.delete<LocationModel>(url) ; 
    }
}