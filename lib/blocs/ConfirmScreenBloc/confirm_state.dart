part of "./confirm_bloc.dart";

abstract class ConfirmState {}

class InitialState extends ConfirmState {}

class NameState extends ConfirmState {
  String name;

  NameState(this.name);
}
