import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:either_option/either_option.dart';
import 'package:meme_front_end/repositories/signup_repository.dart';
part "./signup_event.dart";
part "./signup_state.dart";

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignupRepository _signupRepository;

  SignUpBloc(this._signupRepository) : super(InitialState());

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    yield (await _signupRepository.initiateRegistration(event.phoneNumber))
        .fold((_) => NoSignUp(_), (_) => ProceedSignUp());
  }
}
