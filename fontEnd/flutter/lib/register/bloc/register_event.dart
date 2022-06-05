part of 'register_bloc.dart';



abstract class registerEvent {}

class toLogin extends registerEvent{
  
}

class Signup extends registerEvent {
  final String firstname;
  final String lastname;
  final String username;
  final String email;
  final String password;
  final String confrimpassword;


  Signup({required this.firstname,required this.lastname,required this.username,required this.email, required this.password,required this.confrimpassword});
}