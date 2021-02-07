part of "./ListBloc.dart";

abstract class ListState {}

class InitialState extends ListState {}

class LoadState extends ListState {
  List<String> images;

  LoadState(this.images);
}

class ChosenEntryState extends ListState {}
