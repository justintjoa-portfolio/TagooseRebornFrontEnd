import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import "dart:io";

class ListRepository {
  FlutterSecureStorage _storage;
  String targetImage;

  ListRepository(this._storage);

  Future<void> saveSelectedImage() async {
    await _storage.write(key: "selectedImage", value: targetImage);
  }

  Future<List<String>> getAllPhotos() async {
    return null;
  }
}
