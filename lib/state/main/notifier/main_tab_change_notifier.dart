import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rivepod_example/state/main/models/page_change_model.dart';

/// @Author: kevin
/// @Title: main_tab_change_notifier.dart
/// @Date: 2022-12-01 19:18:48
/// @Description:

class MainTabChangeNotifier extends StateNotifier<PageChangeModel> {
  PageController pageController = PageController();
  MainTabChangeNotifier() : super(PageChangeModel(0, PageController()));

  changeTab(int index) {
    state = PageChangeModel(index, pageController);
    pageController.jumpToPage(index);
  }
}
