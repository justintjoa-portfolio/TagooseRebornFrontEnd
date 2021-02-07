import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meme_front_end/repositories/ListRepository.dart';
import 'package:either_option/either_option.dart';

//parts
part "./ListEvent.dart";
part "./ListState.dart";

class ListBloc extends Bloc<ListEvent, ListState> {
  ListRepository _listRepository;

  ListBloc(this._listRepository) : super(InitialState());

  void selectImage(SelectImage input) {
    _listRepository.targetImage = input.imageID;
  }

  Future<void> saveSelectedImage(ConfirmImage input) async {
    await _listRepository.saveSelectedImage();
  }

  @override
  Stream<ListState> mapEventToState(ListEvent event) async* {
    if (event is InitialEvent) {
      yield LoadState(await _listRepository.getAllPhotos());
    }
    if (event is SelectImage) {
      selectImage(event);
    }
    if (event is ConfirmImage) {
      await saveSelectedImage(event);
      yield ChosenEntryState();
    }
  }
}
