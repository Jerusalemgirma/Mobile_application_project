part of 'auth_bloc.dart';

abstract class AuthState {}

class Idle extends AuthState {}

class LogingIn extends AuthState {}

class LoginSuccessful extends AuthState {}

class LoginFailed extends AuthState {}

class box extends AuthState{}