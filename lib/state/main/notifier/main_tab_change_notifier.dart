import 'package:hooks_riverpod/hooks_riverpod.dart';

/// @Author: kevin
/// @Title: main_tab_change_notifier.dart
/// @Date: 2022-12-01 19:18:48
/// @Description:

class MainTabChangeNotifier extends StateNotifier<int> {
  MainTabChangeNotifier() : super(0);

  chageTab(int index) {
    state = index;
  }
}
