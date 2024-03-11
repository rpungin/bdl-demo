import 'package:bdl_demo/features/games/presentation/pages/games/games_page.dart';
import 'package:bdl_demo/features/games/presentation/pages/home/widgets/home_page.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/schedule_page.dart';
import 'package:bdl_demo/features/games/presentation/pages/tickets/tickets_page.dart';
import 'package:bdl_demo/features/games/presentation/root/root_page_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rootPagesProvider = Provider<RootPages>((ref) => RootPages());

enum RootPageId { home, tickets, schedule, games }

class RootPages {
  List<RootPageData> _pages = [];
  List<RootPageData> get pages => _pages;
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void createPages(BuildContext context) {
    _pages = [
      RootPageData(context,
          id: RootPageId.home,
          titleText: "Home",
          titleWidget: Image.asset(
            "assets/images/app_bar_logo.png",
            width: 200,
          ),
          icon: const Icon(Icons.home),
          destinationPage: const HomePage()),
      RootPageData(context,
          id: RootPageId.schedule,
          titleText: "Schedule",
          icon: const Icon(Icons.calendar_month),
          destinationPage: const SchedulePage()),
      RootPageData(context,
          id: RootPageId.tickets,
          titleText: "Tickets",
          icon: const ImageIcon(AssetImage("assets/images/icon_tickets.png")),
          destinationPage: const TicketsPage()),
      RootPageData(context,
          id: RootPageId.games,
          titleText: "Games",
          icon: const Icon(Icons.games),
          destinationPage: const GamesPage()),
    ];
  }

  RootPageData getPageData(RootPageId id) {
    return _pages.firstWhere((element) => element.id == id);
  }

  void setSelectedPage(int pageIndex) {
    _selectedIndex = pageIndex;
  }

  int indexOfPage(RootPageId pageId) =>
      _pages.indexWhere((element) => element.id == pageId);
}
