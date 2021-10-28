import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TasksReactiveFormComponent } from './tasks-reactive-form.component';

describe('TasksReactiveFormComponent', () => {
  let component: TasksReactiveFormComponent;
  let fixture: ComponentFixture<TasksReactiveFormComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TasksReactiveFormComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(TasksReactiveFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
