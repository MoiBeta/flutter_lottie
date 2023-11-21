import 'package:flutter/material.dart';
import 'package:flutter_lottie/states/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationBarWidget extends ConsumerWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(
      BuildContext context,
      WidgetRef ref,
      ) {
    final int currentIndex = ref.watch(selectedIndexProvider);
    return NavigationBar(
      onDestinationSelected: (int index) {
        ref.read(selectedIndexProvider.notifier).state = index;
      },
      height: 60,
      indicatorColor: Colors.transparent,
      selectedIndex: currentIndex,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          icon: Icon(
            Icons.home_outlined,
            color: Colors.grey,
          ),
          label: 'Second',
        ),
        NavigationDestination(
          selectedIcon: Icon(
            Icons.monetization_on_outlined,
            color: Colors.black,
          ),
          icon: Icon(
            Icons.monetization_on_outlined,
            color: Colors.grey,
          ),
          label: 'First',
        ),
      ],
    );
  }
}
