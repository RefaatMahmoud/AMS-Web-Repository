import { PageModel } from './../models/page';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { SubjectModel } from './../models/subject.model';
import { Resolve, ActivatedRouteSnapshot, RouterStateSnapshot } from "@angular/router";
import { NewSubject } from './newSubject.service';


@Injectable()
export class SubjectResolver implements Resolve<SubjectModel>{

<<<<<<< HEAD
    constructor(private subjectService: NewSubject) { }

    resolve(activatedRoute: ActivatedRouteSnapshot, routerState: RouterStateSnapshot)
        : Observable<SubjectModel> | Promise<SubjectModel> | SubjectModel {
        return this.subjectService.getSubject(+activatedRoute.params['id']);
=======
    resolve(activatedRoute : ActivatedRouteSnapshot, routerState : RouterStateSnapshot)
     : Observable<SubjectModel> | Promise<SubjectModel> | SubjectModel{
        
        return this.subjectService.getSubject(+activatedRoute.params['id']).toPromise().then(
            data => data
        ).catch(
            err => err
        )
>>>>>>> 01e2a3731e2cc6655cfb64b617ba191f801f279d
    }





}