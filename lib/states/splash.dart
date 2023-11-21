import 'package:flutter_riverpod/flutter_riverpod.dart';

Provider<SplashNotifier> splashProvider = Provider((ref) => SplashNotifier());

class SplashNotifier {

  Future<void> loadAppInfo() async{
    await Future.delayed(const Duration(seconds: 4));
  }
}