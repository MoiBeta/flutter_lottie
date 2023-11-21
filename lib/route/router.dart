import 'package:flutter_lottie/route/routes.dart';
import 'package:flutter_lottie/screens/home/home_screen.dart';
import 'package:flutter_lottie/screens/splash/splash_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

Provider<GoRouter> routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: Routes.splash,
    routes: [
      GoRoute(
        path: Routes.home,
        name: Routes.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: Routes.splash,
        name: Routes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  ),
);
