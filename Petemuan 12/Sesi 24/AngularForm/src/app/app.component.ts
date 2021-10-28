import { Component } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Task } from './models/Task';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'AngularForm';
  categories: string[]=[
    'Shopping',
    'Work',
    'Education',
    'Financing'
  ];
  tasks: Task[] = [

  ]
  formIsInvalid: boolean = false;
  handleFormOnSubmit(form:NgForm) {
    const{ taskName, category } = form.value;
    // if(!taskName || !category){
    //   this.formIsInvalid = true
    // }else {
    //   console.log(taskName)
    // }

    this.tasks.push(new Task(taskName, "incomplete", category));
    console.log()
    form.reset();
  }
}
