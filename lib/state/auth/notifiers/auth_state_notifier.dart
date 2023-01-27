import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rivepod_example/util/storage.dart';

import '../models/auth_result.dart';
import '../models/auth_state.dart';
import '../service/authenticator.dart';

/// @author Kevin
/// @date 2022/11/30 14:56
/// @desc 用户登录状态设置

class AuthStateNotifier extends StateNotifier<AuthState> {
  final _authenticator = const Authenticator();

  AuthStateNotifier() : super(const AuthState.unknown()) {
    // if (_authenticator.isAlreadyLoggedIn) {
    //   state = AuthState(
    //     result: AuthResult.success,
    //     isLoading: false,
    //     userId: _authenticator.userId,
    //   );
    // }
    // checkLlogin().then((value) {

    // });
  }

  Future<String?> checkLogin() async {
    var isLogged = await Storage.getData('isLogged');
    debugPrint(isLogged.runtimeType.toString());
    if (isLogged != null) {
      state = AuthState(
        result: AuthResult.success,
        isLoading: false,
        userId: _authenticator.userId,
      );
    }
    return isLogged;
  }

  login() async {
    var result = await _authenticator.login();

    state = AuthState(
      result: result,
      isLoading: false,
      userId: _authenticator.userId,
    );
  }

  logOut() async {
    Storage.removeData('isLogged');
    state = const AuthState.unknown();
  }
}
