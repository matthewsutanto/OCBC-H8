import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';

@Component({
    selector: 'app-aside',
    templateUrl: './aside.component.html',
    styleUrls: ['./aside.component.css']
})
export class AsideComponent implements OnInit {
    @Input() name ='';

    @Output() clickEventHandler = new EventEmitter();

    // @Output() newItemEvent = new EventEmitter();

    constructor () {}

    onButtonClick(){
        this.clickEventHandler.emit()
    }

    // addNewItem(value: string) {
    //     this.newItemEvent.emit(value);
    // }

    ngOnInit(): void {

    }
}