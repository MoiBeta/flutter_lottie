import 'package:flutter/material.dart';
import 'package:flutter_lottie/screens/home/tabs/first_tab.dart';
import 'package:flutter_lottie/screens/home/tabs/second_tab.dart';
import 'package:flutter_lottie/screens/home/widgets/navigation_bar.dart';
import 'package:flutter_lottie/states/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(
      BuildContext context,
      WidgetRef ref,
      ) {
    final int currentIndex = ref.watch(selectedIndexProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(currentIndex == 0
            ? 'Primera Pantalla'
            : 'Segunda Pantalla'),
      ),
      bottomNavigationBar: const NavigationBarWidget(),
      body: currentIndex == 0
          ? const FirstTab()
          : const SecondTab(),
    );
  }
}
