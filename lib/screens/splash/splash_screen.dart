import 'package:flutter/material.dart';
import 'package:flutter_lottie/route/routes.dart';
import 'package:flutter_lottie/states/splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {

  @override
  void initState() {
    super.initState();
    ref.read(splashProvider).loadAppInfo().then(
            (_) => context.replaceNamed(Routes.home),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/animations/crypto_animation.json'),
        ],
      ),
    );
  }
}
