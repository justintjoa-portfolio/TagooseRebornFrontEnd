import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import "dart:io";

import 'package:meme_front_end/Entities/Internal/Target.dart';

class TargetRepository {
  FlutterSecureStorage _storage;

  TargetRepository(this._storage);

  Future<Target> getTarget() async {
    String name = await _storage.read(key: "selectedImage");
    return Target("happy", name);
  }
}
