import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/auth_result.dart';
import 'auth_state_provider.dart';

/// @Author: kevin
/// @Title: is_logged_in_provider.dart
/// @Date: 2022-11-25 15:45:43
/// @Description:
part 'is_logged_in_provider.g.dart';

@riverpod
bool isLoggedIn(IsLoggedInRef ref) {
  final authProvider = ref.watch(authStateProvider);
  return authProvider.result == AuthResult.success;
}
