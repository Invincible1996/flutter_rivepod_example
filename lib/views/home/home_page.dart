/// @author Kevin
/// @date 2022/12/5 11:49
/// @desc
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../state/auth/providers/auth_state_provider.dart';

/// @author Kevin
/// @date 2022/12/5 11:34
/// @desc
class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        actions: [
          TextButton(
            onPressed: () {
              ref.read(authStateProvider.notifier).logOut();
            },
            child: const Text(
              'log out',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
