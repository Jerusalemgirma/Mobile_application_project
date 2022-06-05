import 'dart:convert';
import 'package:flutter_application_6/auth/screen/login_screen.dart';



import 'package:flutter/material.dart';
import 'package:flutter_application_6/auth/config.dart';


import 'package:flutter_application_6/auth/models/login_request_model.dart';
import 'package:flutter_application_6/auth/services/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
part 'auth_event.dart';
part 'auth_state.dart';

LoginScreen some= new LoginScreen();
var email=some.email;

var password=some.password;



class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(Idle()) {
    on<Login>(_onLogin);
  }

  void _onLogin(Login event, Emitter emit) async {
    emit(LogingIn());
    await Future.delayed(const Duration(seconds: 3));
    LoginRequestModel model=LoginRequestModel(
      email: email,
      password: password,
      );
      APIService.login(model).then((response)=>{
        if(response){
          emit(LoginSuccessful())

        }else{

          emit(LoginFailed())
        
        }
      });


    
  }
}