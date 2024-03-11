import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedRootPageProvider =
    StateNotifierProvider<SelectedRootPageIndexStateNotifier, int>(
        (ref) => SelectedRootPageIndexStateNotifier(0));

class SelectedRootPageIndexStateNotifier extends StateNotifier<int> {
  SelectedRootPageIndexStateNotifier(super.state);

  void setSelectedPageIndex(int selectedIndex) {
    state = selectedIndex;
  }

  int get selectedIndex => state;
}
