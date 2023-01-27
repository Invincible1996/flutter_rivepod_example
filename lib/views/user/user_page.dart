import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../state/auth/providers/auth_state_provider.dart';

/// @author Kevin
/// @date 2022/12/5 11:34
/// @desc
class UserPage extends ConsumerWidget {
  const UserPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('User'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(0xFFC2C6CC),
                ),
              ),
            ),
            child: Row(
              children: const [
                Icon(Icons.settings),
                SizedBox(
                  width: 10,
                ),
                Text('设置'),
              ],
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              ref.read(authStateProvider.notifier).logOut();
            },
            child: const Text('logout'),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
