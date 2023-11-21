import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Lottie.asset('assets/animations/wallet_animation.json'),
    );
  }
}
