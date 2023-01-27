/// @Author: kevin
/// @Title: main_view.dart
/// @Date: 2022-12-01 16:02:40
/// @Description:
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rivepod_example/state/main/state/main_tab_change_provider.dart';
import 'package:rivepod_example/views/home/home_page.dart';
import 'package:rivepod_example/views/message/message_page.dart';
import 'package:rivepod_example/views/user/user_page.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  final List<Widget> _pages = const [
    HomePage(),
    MessagePage(),
    UserPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('MainView'),
      // ),
      body: PageView.builder(
          controller: ref.watch(mainTabChangeProvider).pageController,
          itemCount: _pages.length,
          itemBuilder: (context, index) => _pages[index]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ref.watch(mainTabChangeProvider).pageIndex!,
        onTap: (value) =>
            ref.read(mainTabChangeProvider.notifier).changeTab(value),
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
