import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:either_option/either_option.dart';
import 'package:meme_front_end/repositories/GuideRepository.dart';

part "./ScanEvent.dart";

part "./ScanState.dart";

class ScanBloc extends Bloc<ScanEvent, ScanState> {}
