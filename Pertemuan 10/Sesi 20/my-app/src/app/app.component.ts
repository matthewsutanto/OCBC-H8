import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'my-app';
  counter = 0;
  items = ["sepatu","sendal"]
  // items = "";
  inputCounter = "Add Counter";
  subtractCounter = "Subtract Counter";
  resetCounter = "Reset Counter";

  addCounter(){
    this.counter++;
  }

  subCounter(){
    if(this.counter!=0) {
      this.counter--;
    }
    
  }

  resCounter() {
    this.counter=0;
  }

  addItemInParent(newItem: string) {
    
    this.items.push(newItem);
    // this.items.push(newItem);
    console.log(this.items);
  }
}
