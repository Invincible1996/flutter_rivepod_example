/// @Author: kevin
/// @Title: main_view.dart
/// @Date: 2022-12-01 16:02:40
/// @Description:
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rivepod_example/state/auth/providers/auth_state_provider.dart';
import 'package:rivepod_example/state/main/state/main_tab_change_provider.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainView'),
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
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ref.watch(mainTabChangeProvider),
        onTap: (value) =>
            ref.read(mainTabChangeProvider.notifier).chageTab(value),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
              ),
              label: 'message'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'user')
        ],
      ),
    );
  }
}
