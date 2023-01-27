/// @author Kevin
/// @date 2022/12/5 11:49
/// @desc
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// @author Kevin
/// @date 2022/12/5 11:34
/// @desc
class MessagePage extends ConsumerWidget {
  const MessagePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        elevation: .6,
        title: const Text('MessagePage'),
      ),
      body: Container(
        color: Colors.indigo,
      ),
    );
  }
}
