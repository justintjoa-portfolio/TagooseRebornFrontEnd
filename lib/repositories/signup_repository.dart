import 'package:either_option/either_option.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meme_front_end/blocs/SignUpBloc/signup_bloc.dart';
import 'package:meme_front_end/providers/FirebaseCodeProvider.dart';

class SignupRepository {
  FlutterSecureStorage _storage;
  FirebaseCodeProvider _codeProvider;

  SignupRepository(this._codeProvider, this._storage);

  Future<Either<String, String>> initiateRegistration(String phoneNumber) {
    //ping the database with the phone number
    //database should decide whether or not the phone number is legit
    //if it's legit, it will notify us that we can in fact proceed
    //it has its own logic with dealing with entries that already exist
    //if false, give string of error
  }
}
