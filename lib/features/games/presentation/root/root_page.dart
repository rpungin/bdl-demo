import 'package:bdl_demo/features/games/presentation/pages/home/home_page.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/schedule_page.dart';
import 'package:bdl_demo/features/games/presentation/pages/tickets/tickets_page.dart';
import 'package:bdl_demo/features/games/presentation/root/navigation_page_data.dart';
import 'package:flutter/material.dart';

import '../pages/games/games_page.dart';

enum NavigationPageId { home, tickets, schedule, games }

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedPageIndex = 0;
  late final List<NavigationPageData> _pagesData;
  late final PageController _pageController;
  @override
  void initState() {
    _pagesData = _buildPagesData(context);
    _selectedPageIndex = _indexOfPage(NavigationPageId.schedule);
    _pageController = PageController(initialPage: _selectedPageIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _pagesData[_selectedPageIndex].title,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) {
          if (index != _selectedPageIndex) {
            setState(() => _selectedPageIndex = index);
          }
        },
        children: _pagesData.map((e) => e.destinationPage).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPageIndex,
        onTap: (index) => setState(() {
          if (index != _selectedPageIndex) {
            _selectedPageIndex = index;
            //_pageController.jumpToPage(index);
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease);
          }
        }),
        items: _pagesData.map((e) => e.bottomNavigationBarItem).toList(),
      ),
    );
  }

  List<NavigationPageData> _buildPagesData(BuildContext context) {
    final pages = [
      NavigationPageData(context,
          id: NavigationPageId.home,
          titleText: "Home",
          titleWidget: Image.asset(
            "assets/images/app_bar_logo.png",
            width: 200,
          ),
          icon: const Icon(Icons.home),
          destinationPage: const HomePage()),
      NavigationPageData(context,
          id: NavigationPageId.tickets,
          titleText: "Tickets",
          icon: const ImageIcon(AssetImage("assets/images/icon_tickets.png")),
          destinationPage: const TicketsPage()),
      NavigationPageData(context,
          id: NavigationPageId.schedule,
          titleText: "Schedule",
          icon: const Icon(Icons.calendar_month),
          destinationPage: const SchedulePage()),
      NavigationPageData(context,
          id: NavigationPageId.games,
          titleText: "Games",
          icon: const Icon(Icons.games),
          destinationPage: const GamesPage()),
    ];
    return pages;
  }

  int _indexOfPage(NavigationPageId pageId) =>
      _pagesData.indexWhere((element) => element.id == pageId);
}
