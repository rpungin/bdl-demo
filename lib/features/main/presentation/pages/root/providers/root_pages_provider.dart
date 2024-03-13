import 'package:bdl_demo/features/games/presentation/pages/games/games_page.dart';
import 'package:bdl_demo/features/games/presentation/pages/home/widgets/home_page.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/schedule_page.dart';
import 'package:bdl_demo/features/games/presentation/pages/tickets/tickets_page.dart';
import 'package:bdl_demo/features/main/presentation/pages/root/page_navigation_menu_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rootPagesProvider = Provider<RootPages>((ref) => RootPages());

enum RootPageId {
  home,
  tickets,
  schedule,
  play,
  profile,
  mobileWallet,
  nhlScores,
  roster,
  settings
}

class RootPages {
  List<PageNavigationMenuData> _pages = [];
  List<PageNavigationMenuData> get pages => _pages;
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void createPages(BuildContext context) {
    _pages = [
      PageNavigationMenuData(context,
          id: RootPageId.home,
          titleText: "Home",
          titleWidget: Image.asset(
            "assets/images/app_bar_logo.png",
            width: 200,
          ),
          icon: const Icon(Icons.home),
          destinationPage: const HomePage()),
      PageNavigationMenuData(context,
          id: RootPageId.schedule,
          titleText: "Schedule",
          icon: const Icon(Icons.calendar_month),
          destinationPage: const SchedulePage()),
      PageNavigationMenuData(context,
          id: RootPageId.tickets,
          titleText: "Tickets",
          icon: const ImageIcon(AssetImage("assets/images/icon_tickets.png")),
          destinationPage: const TicketsPage()),
      PageNavigationMenuData(context,
          id: RootPageId.play,
          titleText: "Play",
          icon: const Icon(Icons.games),
          destinationPage: const GamesPage()),
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
