/// @author Kevin
/// @date 2022/11/30 20:12
/// @desc
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rivepod_example/state/auth/providers/countdown_state_provider.dart';
import 'package:rivepod_example/views/login/login_page.dart';
import 'package:rivepod_example/views/main/splash_page.dart';

import '../../state/auth/providers/is_logged_in_provider.dart';
import 'main_view.dart';

class IndexPage extends ConsumerWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoggedIn = ref.watch(isLoggedInProvider);
    final isCountDown = ref.watch(countdownProvider);

    // if (!isCountDown) {
    //   return const SplashPage();
    // }

    return Stack(
      children: [
        if (isLoggedIn) const MainView() else const LoginPage(),
        if (!isCountDown) const SplashPage() else const SizedBox.shrink(),
      ],
    );
  }
}
