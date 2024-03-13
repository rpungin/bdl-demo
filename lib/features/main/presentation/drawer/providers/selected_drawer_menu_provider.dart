import 'package:bdl_demo/features/main/presentation/drawer/providers/app_drawer_provider.dart';
import 'package:bdl_demo/features/main/presentation/pages/root/providers/root_pages_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedDrawerMenuProvider =
    StateNotifierProvider<SelectedDrawerMenuIndexStateNotifier, int>((ref) =>
        SelectedDrawerMenuIndexStateNotifier(0,
            drawerPages: ref.read(drawerPagesProvider)));

class SelectedDrawerMenuIndexStateNotifier extends StateNotifier<int> {
  final DrawerPages drawerPages;
  SelectedDrawerMenuIndexStateNotifier(int initialIndex,
      {required this.drawerPages})
      : super(initialIndex);

  void setSelectedPageIndex(int selectedIndex) {
    state = selectedIndex;
  }

  int get selectedIndex => state;

  void setSelectedPage(RootPageId pageId) {
    setSelectedPageIndex(drawerPages.indexOfPage(pageId));
  }
}
