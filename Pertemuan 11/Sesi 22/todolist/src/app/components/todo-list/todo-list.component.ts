import { Component, OnInit } from '@angular/core';
import { Todo } from 'src/app/models/Todo';

@Component({
  selector: 'app-todo-list',
  templateUrl: './todo-list.component.html',
  styleUrls: ['./todo-list.component.css']
})
export class TodoListComponent implements OnInit {

  constructor() { }
  
  todos:Todo[]=[];
  todoStr:string="";

  ngOnInit(): void {
    this.todos = [
      {
        content: "First todo",
        completed: false,
        isShown:true
      },
      {
        content: "Second todo",
        completed: false,
        isShown:true
      }
    ]
  }

  toggleDone(id:number) {
    this.todos.map((v,i) => {
      if(i == id) v.completed =! v.completed;
      // console.log(v)
      return v;
    })
  }

  deleteTodo(id:number) {
    this.todos = this.todos.filter((v,i) => i !== id);
  }

  addTodo(todo: Todo) {
    if(todo.content.length > 0) {
      this.todos.push(todo);
    }else {
      alert("Input masih kosong")
    }
  }

  // showList(){
  //   this.isShown = true
  // }

  // hideList(){
  //   this.isShown = false
  // }

  toggleUpdate(todo: Todo, i:number) {
    this.todoStr = todo.content
    this.todos[i].isShown = false
    console.log(todo.content)
  }
  
  updateDone(i:number) {
    this.todos[i].isShown = true
  }
  
}
