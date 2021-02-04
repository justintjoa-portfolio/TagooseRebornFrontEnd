part of "./code_confirm_bloc.dart";

abstract class CodeConfirmState {}

class ApprovedCode extends CodeConfirmState {}

class DeniedCode extends CodeConfirmState {
  String _message;

  DeniedCode(this._message);
}

class InitialState extends CodeConfirmState {}
