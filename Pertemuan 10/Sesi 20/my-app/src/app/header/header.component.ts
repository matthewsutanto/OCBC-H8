import { Component, OnInit, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {
  @Output() newItemEvent = new EventEmitter<string>();
  // @Output() newDeleteEvent = new EventEmitter<string>();
  addNewItem(value:string) {
    this.newItemEvent.emit(value);
  }

  // deleteItem(){
  //   this.newDeleteEvent.emit();
  // }

  constructor() { }

  ngOnInit(): void {
  }

}
