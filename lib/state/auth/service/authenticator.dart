import 'package:rivepod_example/util/storage.dart';

import '../models/auth_result.dart';

/// @author Kevin
/// @date 2022/11/30 15:20
/// @desc
class Authenticator {
  const Authenticator();

  bool get isAlreadyLoggedIn => false;

  get userId => 'id';

  set isAlreadyLoggedIn(value) {}

  Future<AuthResult> login() async {
    isAlreadyLoggedIn = true;
    return AuthResult.success;
  }

  Future<void> logOut() async {}
}
