import 'package:bdl_demo/features/games/presentation/pages/home/widgets/home_page.dart';
import 'package:bdl_demo/features/games/presentation/root/providers/root_pages_provider.dart';
import 'package:bdl_demo/features/games/presentation/root/page_navigation_menu_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final drawerPagesProvider = Provider<DrawerPages>((ref) => DrawerPages());

class DrawerPages {
  List<PageNavigationMenuData> _pages = [];
  List<PageNavigationMenuData> get pages => _pages;
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void createPages(BuildContext context) {
    _pages = [
      PageNavigationMenuData(context,
          id: RootPageId.profile,
          titleText: "My Profile",
          icon: const Icon(Icons.person),
          destinationPage: const HomePage()),
      PageNavigationMenuData(context,
          id: RootPageId.schedule,
          titleText: "Mobile Wallet",
          icon: const Icon(Icons.money),
          destinationPage: const HomePage()),
      PageNavigationMenuData(context,
          id: RootPageId.nhlScores,
          titleText: "NHL Scores",
          icon: const Icon(Icons.score),
          destinationPage: const HomePage()),
      PageNavigationMenuData(context,
          id: RootPageId.settings,
          titleText: "Roster",
          icon: const Icon(Icons.list),
          destinationPage: const HomePage()),
      PageNavigationMenuData(context,
          id: RootPageId.settings,
          titleText: "Settings",
          icon: const Icon(Icons.settings),
          destinationPage: const HomePage()),
    ];
  }

  PageNavigationMenuData getPageData(RootPageId id) {
    return _pages.firstWhere((element) => element.id == id);
  }

  void setSelectedPage(int pageIndex) {
    _selectedIndex = pageIndex;
  }

  int indexOfPage(RootPageId pageId) =>
      _pages.indexWhere((element) => element.id == pageId);
}
