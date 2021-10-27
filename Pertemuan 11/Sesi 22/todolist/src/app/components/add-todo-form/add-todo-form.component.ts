import { Component, OnInit, EventEmitter, Output, Input } from '@angular/core';
import { Todo } from 'src/app/models/Todo';

@Component({
  selector: 'app-add-todo-form',
  templateUrl: './add-todo-form.component.html',
  styleUrls: ['./add-todo-form.component.css']
})
export class AddTodoFormComponent{
  @Output() newTodoEvent = new EventEmitter<Todo>();
  @Input() todoUpdate:string="";
  inputTodo:string = "";

  addTodo() {
    const todo: Todo = {
      content: this.inputTodo,
      completed: false
    };

    this.newTodoEvent.emit(todo)
    this.inputTodo = "";
  }

}
