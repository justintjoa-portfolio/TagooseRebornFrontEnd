import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ConfirmRepository {
  ConfirmRepository(this._storage);

  FlutterSecureStorage _storage;
  Future<String> getName() async {
    return (await _storage.read(key: "Name"));
    //gets the username string to confirm that they're logged in.
  }
}
