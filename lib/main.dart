import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rivepod_example/views/main/index_page.dart';

void main() {
  runApp(
    const ProviderScope(
      overrides: [],
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blueGrey,
        indicatorColor: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: const IndexPage(),
      //   home: Consumer(
      //     builder: (context, ref, child) {
      // final isLoggedIn = ref.watch(isLoggedInProvider);
      //       isLoggedIn.when(data: (data) {
      //         print(data);
      //         return const MainView();
      //       }, error: (error, stackTrac) {
      //         return Container();
      //       }, loading: () {
      //         return const Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       });
      //       // if (isLoggedIn) {
      //       //   return const MainView();
      //       // } else {
      //       //   return const LoginPage();
      //       // }
      //     },
      //   ),
    );
  }
}
