import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:either_option/either_option.dart';
import 'package:meme_front_end/repositories/GuideRepository.dart';

part "./GuideEvent.dart";
part "./GuideState.dart";

class GuideBloc extends Bloc<GuideEvent, GuideState> {
  GuideRepository _guideRepository;

  GuideBloc(this._guideRepository) : super(InitialState());

  @override
  Stream<GuideState> mapEventToState(GuideEvent event) async* {
    if (await _guideRepository.willGuide()) {
      yield BeginDestinationState();
    } else {
      yield BeginScanState();
    }
  }
}
