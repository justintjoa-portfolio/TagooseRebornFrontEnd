import 'package:either_option/either_option.dart';
import 'package:http/http.dart';

abstract class BaseRepository {
  Either<String, String> processRequest(Response input) {
    if (input.statusCode > 200) {
      return Left("An HTTP Error has occured.");
    } else {
      return Right(input.body);
    }
  }

  String convertToJsonPairs(Map<String, String> input) {}

  Map<String, String> convertToMap(String input) {}

  String convertToJsonArray(List<String> input) {}

  List<String> convertToList(String input) {}
}
