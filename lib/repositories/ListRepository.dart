import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import "dart:io";

import 'package:meme_front_end/repositories/base_repository.dart';

class ListRepository extends BaseRepository {
  FlutterSecureStorage _storage;
  String targetImage;

  ListRepository(this._storage);

  Future<void> saveSelectedImage() async {
    await _storage.write(key: "selectedImage", value: targetImage);
    await _storage.write(key: "isActive", value: "true");
  }

  Future<List<String>> getAllPhotos() async {
    return null;
  }
}
