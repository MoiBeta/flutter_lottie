import 'package:flutter/material.dart';
import 'package:flutter_lottie/route/router.dart';
import 'package:flutter_lottie/screens/splash/splash_screen.dart';
import 'package:flutter_lottie/theme/light_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(
      BuildContext context,
      WidgetRef ref,
      ) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.light,
      routerConfig: ref.read(routerProvider),
    );
  }
}
