import 'package:flutter_riverpod/flutter_riverpod.dart';

StateProvider<int> selectedIndexProvider = StateProvider<int>(
        (StateProviderRef<int> ref) => 0,
);