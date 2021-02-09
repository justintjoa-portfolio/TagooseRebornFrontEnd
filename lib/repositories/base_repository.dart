import 'package:either_option/either_option.dart';
import 'package:http/http.dart';
import 'package:meme_front_end/Entities/Internal/Target.dart';

abstract class BaseRepository {
  Either<String, String> processRequest(Response input) {
    if (input.statusCode > 200) {
      return Left("An HTTP Error has occured.");
    } else {
      return Right(input.body);
    }
  }

  String convertToJson(List<Target> input) {}

  List<Target> convertToList(String input) {}

  Target findTarget(String name, List<Target> input) {}
}
