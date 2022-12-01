/// @author Kevin
/// @date 2022/12/1 10:02
/// @desc
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rivepod_example/state/auth/providers/countdown_state_provider.dart';
import 'package:timer_count_down/timer_count_down.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Countdown(
          seconds: 1,
          build: (BuildContext context, double time) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ref
                          .read(countdownProvider.notifier)
                          .update((state) => true);
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    child: Text('跳过$time'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: const Text('我是欢迎页'),
                ),
              )
            ],
          ),
          interval: const Duration(milliseconds: 1000),
          onFinished: () {
            ref.read(countdownProvider.notifier).update((state) => true);
          },
        ),
      ),
    );
  }
}
