part of "./TargetBloc.dart";

abstract class TargetState {}

class InitialState extends TargetState {}

class LoadData extends TargetState {
  String imageName;
  String coordinates;

  LoadData(this.imageName, this.coordinates);
}
