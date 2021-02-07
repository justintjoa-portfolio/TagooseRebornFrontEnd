part of "./ListBloc.dart";

abstract class ListEvent {}

class InitialEvent extends ListEvent {}

class SelectImage extends ListEvent {
  String imageID;
}

class ConfirmImage extends ListEvent {}
