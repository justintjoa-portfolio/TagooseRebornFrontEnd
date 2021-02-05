part of "signup_bloc.dart";

abstract class SignUpState {}

class ProceedSignUp extends SignUpState {}

class NoSignUp extends SignUpState {
  String message;
  NoSignUp(this.message);
}

class InitialState extends SignUpState {}
