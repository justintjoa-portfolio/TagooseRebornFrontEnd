import 'package:meme_front_end/providers/FirebaseCodeProvider.dart';
import 'package:either_option/either_option.dart';

class CodeConfirmRepository {
  FirebaseCodeProvider codeProvider;

  CodeConfirmRepository(codeProvider);

  Future<Either<String, String>> approveCode(String code) async {
    //should send request and get http response via codeProvider
    //assuming process is not failed, see it's result, which should be a boolean
    //if boolean is true, return a right with an empty string
    //else, return left with error string
  }
}
