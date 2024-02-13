import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sawara_interview/core/theme/theme.dart';
import 'package:sawara_interview/features/login_page/presentations/page/login_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ref.watch(appThemeProvider),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
