import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meme_front_end/Entities/Internal/Target.dart';
import 'package:meme_front_end/repositories/ListRepository.dart';
import 'package:either_option/either_option.dart';
import 'package:meme_front_end/repositories/TargetRepository.dart';

//parts
part "./TargetEvent.dart";
part "./TargetState.dart";

class TargetBloc extends Bloc<TargetEvent, TargetState> {
  TargetRepository _targetRepository;

  TargetBloc(this._targetRepository) : super(InitialState());

  @override
  Stream<TargetState> mapEventToState(TargetEvent event) async* {
    if (event is TargetEvent) {
      Target input = await _targetRepository.getTarget();
      yield LoadData(input.coordinates, input.name);
    }
  }
}
