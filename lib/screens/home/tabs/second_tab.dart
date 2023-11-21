import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/animations/coin_animation.json'),
    );
  }
}
