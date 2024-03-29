import 'package:bdl_demo/features/main/presentation/drawer/providers/app_drawer_provider.dart';
import 'package:bdl_demo/features/main/presentation/drawer/widgets/app_drawer.dart';
import 'package:bdl_demo/features/main/presentation/pages/root/page_navigation_menu_data.dart';
import 'package:bdl_demo/features/main/presentation/pages/root/providers/root_pages_provider.dart';
import 'package:bdl_demo/features/main/presentation/pages/root/providers/selected_root_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final scaffoldKey = GlobalKey<ScaffoldState>();

class RootPage extends ConsumerStatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  ConsumerState<RootPage> createState() => _RootPageState();
}

class _RootPageState extends ConsumerState<RootPage> {
  late final PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    ref.read(rootPagesProvider).createPages(context);
    ref.read(drawerPagesProvider).createPages(context);
    ref.read(selectedRootPageProvider.notifier).addListener((pageIndex) {
      _showPage(pageIndex);
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rootPages = ref.read(rootPagesProvider);
    final selectedPageIndex = ref.watch(selectedRootPageProvider);
    final PageNavigationMenuData selectedPage =
        rootPages.pages[selectedPageIndex];
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: selectedPage.title),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) {
          if (index != selectedPageIndex) {
            ref
                .read(selectedRootPageProvider.notifier)
                .setSelectedPageIndex(index);
          }
        },
        children: rootPages.pages.map((e) => e.destinationPage ?? Container()).toList(),
      ),
      drawer: const Drawer(
        child: AppDrawer(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedPageIndex,
        onTap: (index) {
          if (index != selectedPageIndex) {
            ref
                .read(selectedRootPageProvider.notifier)
                .setSelectedPageIndex(index);
          }
        },
        items: rootPages.pages.map((e) => e.bottomNavigationBarItem).toList(),
      ),
    );
  }

  void _showPage(int pageIndex) {
    if (_pageController.positions.isEmpty) return;
    _pageController.jumpToPage(pageIndex);
    // _pageController.animateToPage(pageIndex,
    //     duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}
