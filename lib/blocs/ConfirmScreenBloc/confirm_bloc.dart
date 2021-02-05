import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:either_option/either_option.dart';
import 'package:meme_front_end/repositories/confirm_repository.dart';
part "confirm_event.dart";
part "confirm_state.dart";

class ConfirmBloc extends Bloc<ConfirmEvent, ConfirmState> {
  ConfirmBloc(this._confirmRepository) : super(InitialState());

  ConfirmRepository _confirmRepository;

  @override
  Stream<ConfirmState> mapEventToState(ConfirmEvent event) async* {
    yield NameState(await _confirmRepository.getName());
  }
}
