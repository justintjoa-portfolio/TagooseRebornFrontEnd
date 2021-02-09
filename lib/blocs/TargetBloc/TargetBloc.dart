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

  //target bloc - when user taps on destination to see what they're looking for
  //can cancel the destination

  @override
  Stream<TargetState> mapEventToState(TargetEvent event) async* {
    yield LoadingState();
    if (event is InitialEvent) {
      yield (await _targetRepository.getTarget())
          .fold((_) => NoData(), (_) => LoadData(_.coordinates, _.name));
    }
    if (event is CancelTrip) {
      await _targetRepository.cancelTrip();
      yield NoData();
    }
  }
}
