import { Component, OnInit } from '@angular/core';
import { FormGroup,FormControl, Validators } from '@angular/forms';
@Component({
  selector: 'app-login-reactive-form',
  templateUrl: './login-reactive-form.component.html',
  styleUrls: ['./login-reactive-form.component.css']
})
export class LoginReactiveFormComponent implements OnInit {

  loginData = new FormGroup({
    username: new FormControl('', [
      Validators.required,
      Validators.minLength(5),
      Validators.email
    ]),
    password: new FormControl('',
      Validators.minLength(7)
    )
  });
  isSubmitted = false;
  strUsername = "username";
  errors:any = {
    "username" : {

    },
    "password" : {

    }
  }
  handleLoginForm(){
    this.isSubmitted=true
    this.isValidate();
    console.log(this.loginData.get('password')?.value);
    console.log(this.loginData.controls["username"]);
  }

  handleIsSubmittedState(){
    if(this.isSubmitted === true) {
      this.isSubmitted=false
    }
  }
  
  get username(){
    // console.log(this.loginData.controls['username'].errors)
    return this.loginData.get('username')
  }

  get password(){
    return this.loginData.get('password')
  }

  ngOnInit(): void {
  }

  isValidate(){
    if(this.username?.invalid) {
      this.errors.username = {...this.username?.errors}
    }else{
      this.errors.username = {}
    }
  }

}
