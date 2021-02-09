import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import "dart:io";

import 'package:meme_front_end/Entities/Internal/Target.dart';
import 'package:either_option/either_option.dart';
import 'package:meme_front_end/repositories/base_repository.dart';

class TargetRepository extends BaseRepository {
  FlutterSecureStorage _storage;

  TargetRepository(this._storage);

  Future<Either<String, Target>> getTarget() async {
    String active = await _storage.read(key: "isActive");
    if (active == "true") {
      String name = await _storage.read(key: "selectedImage");
      return Right(findTarget(
          name, convertToList((await _storage.read(key: "targets")))));
    } else {
      return Left("Not active");
    }
  }

  Future<void> cancelTrip() async {
    await _storage.write(key: "isActive", value: "false");
  }
}
