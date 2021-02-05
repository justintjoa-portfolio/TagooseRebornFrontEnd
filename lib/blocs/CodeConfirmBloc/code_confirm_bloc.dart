import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meme_front_end/repositories/code_confirm_repository.dart';
import 'package:either_option/either_option.dart';
part "code_confirm_event.dart";
part "code_confirm_state.dart";

class CodeConfirmBloc extends Bloc<CodeConfirmEvent, CodeConfirmState> {
  CodeConfirmBloc(this._codeConfirmRepository) : super(InitialState());

  CodeConfirmRepository _codeConfirmRepository;

  @override
  Stream<CodeConfirmState> mapEventToState(CodeConfirmEvent event) async* {
    yield (await _codeConfirmRepository.approveCode(event.code))
        .fold((_) => DeniedCode(_), (_) => ApprovedCode());
  }
}
