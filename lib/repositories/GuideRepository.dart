import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meme_front_end/repositories/base_repository.dart';
import 'package:either_option/either_option.dart';

class GuideRepository extends BaseRepository {
  FlutterSecureStorage _storage;

  GuideRepository(this._storage);

  Future<bool> willGuide() async {
    String value = await _storage.read(key: "isActive");
    if (value == "true") {
      return true;
    } else {
      return false;
    }
  }
}
