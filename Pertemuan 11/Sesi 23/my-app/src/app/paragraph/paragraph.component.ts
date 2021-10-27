import { Component, OnInit,Input } from '@angular/core';

@Component({
  selector: 'app-paragraph',
  templateUrl: './paragraph.component.html',
  styleUrls: ['./paragraph.component.scss']
})
export class ParagraphComponent implements OnInit {
  @Input() message = '';
  @Input() isShown = true;
  constructor() { }

  ngOnInit(): void {
  }

}
