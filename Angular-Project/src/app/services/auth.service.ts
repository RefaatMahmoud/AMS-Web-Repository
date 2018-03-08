import { Http, Response } from '@angular/http';
import { FormGroup } from '@angular/forms';
import 'rxjs/Rx';
import { Injectable } from '@angular/core';

@Injectable()
export class AuthService {

    private  url= 'https://jsonplaceholder.typicode.com/posts';


    constructor(private http: Http) {}

    // this method to get all student info
    getAccounts() {
        return this.http.get(this.url).map(
            (response: Response) => {
                const data = response.json();
                return data;
            }
        );

    }


}

