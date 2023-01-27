import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rivepod_example/state/main/models/page_change_model.dart';
import 'package:rivepod_example/state/main/notifier/main_tab_change_notifier.dart';

/// @Author: kevin
/// @Title: main_tab_change_provider.dart
/// @Date: 2022-12-01 19:17:29
/// @Description:

final mainTabChangeProvider =
    StateNotifierProvider<MainTabChangeNotifier, PageChangeModel>(
  (ref) => MainTabChangeNotifier(),
);
