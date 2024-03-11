import 'package:bdl_demo/features/games/presentation/root/providers/root_pages_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedRootPageProvider =
    StateNotifierProvider<SelectedRootPageIndexStateNotifier, int>((ref) =>
        SelectedRootPageIndexStateNotifier(0,
            rootPages: ref.read(rootPagesProvider)));

class SelectedRootPageIndexStateNotifier extends StateNotifier<int> {
  final RootPages rootPages;
  SelectedRootPageIndexStateNotifier(int initialIndex,
      {required this.rootPages})
      : super(initialIndex);

  void setSelectedPageIndex(int selectedIndex) {
    state = selectedIndex;
  }

  int get selectedIndex => state;

  void setSelectedPage(RootPageId pageId) {
    setSelectedPageIndex(rootPages.indexOfPage(pageId));
  }
}
