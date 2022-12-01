import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rivepod_example/state/auth/providers/auth_state_provider.dart';

import '../../util/storage.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SizedBox(
          width: screenWidth * .85,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'account',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'password',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () async {
                  ref.read(authStateProvider.notifier).login();
                },
                child: Container(
                  alignment: Alignment.center,
                  width: screenWidth * .85,
                  height: 45,
                  child: const Text('login'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
