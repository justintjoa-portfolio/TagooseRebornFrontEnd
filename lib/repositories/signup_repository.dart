import 'package:either_option/either_option.dart';

class SignupRepository {
  Future<Either<String, String>> initiateRegistration(String phoneNumber) {
    //ping the database with the phone number
    //database should decide whether or not the phone number is legit
    //if it's legit, it will notify us that we can in fact proceed
    //it has its own logic with dealing with entries that already exist
    //if false, give string of error
  }
}
