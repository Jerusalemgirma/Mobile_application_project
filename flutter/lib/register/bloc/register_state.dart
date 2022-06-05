part of 'register_bloc.dart';




abstract class registerState {}


class Nav  extends   registerState{}

class Idle extends registerState {}

class SignIn extends registerState {}

class SignupSuccessful extends registerState {}

class SignupFailed extends registerState {}
