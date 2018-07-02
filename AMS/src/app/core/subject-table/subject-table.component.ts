import { NewSubject } from './../services/newSubject.service';
import { Component, OnInit, AfterContentInit } from '@angular/core';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { SubjectModel } from '../models/subject.model';
@Component({
  selector: 'app-subject-table',
  templateUrl: './subject-table.component.html',
  styleUrls: ['./subject-table.component.css']
})
export class SubjectTableComponent implements OnInit, AfterContentInit {


  name : string;
  private arr : any [];
  private groupNumber: number;
  private subjects   : SubjectModel[];

  constructor(private router: Router,
    private activatedRoute: ActivatedRoute,
    private subjectService: NewSubject) { }

  ngOnInit() {
    this.activatedRoute.params.subscribe(
      (params: Params) => {
        this.groupNumber = +params['groupNumber'];
        this.subjectService.getSubjectsByGroupNumber(this.groupNumber).subscribe(
          (response) =>{
             this.subjects = response.data;
             console.log(response);
    
          } ,
          (error) => console.log(error)
        );
      }
    );
    
    
  }


  ngAfterContentInit() {

  }

  
  addSubject(){
      this.router.navigate(["new"], {relativeTo:this.activatedRoute});
  }

  getSubject(id: number) {
    const subject = this.subjects.find(
      (s) => {
        return s.id === id;
      }
    );
    return subject;
  }


deleteSubject(data: SubjectModel, index : number) {
  // this.router.navigate(["subject-table",]);
  console.log("record deleted successfully !") ; 
  //  this.activities.splice(index , 1) ; 
   this.subjectService.deleteSubject(data.id).subscribe(
     res =>{
      this.subjects.splice(index , 1) ;  
      console.log("record deleted successfully !") ; 
    }
     , 
     err => {
       console.log(err) ;
     }
   ) ; 
}



}
