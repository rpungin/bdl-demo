import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/features/games/presentation/root/drawer/providers/app_drawer_provider.dart';
import 'package:bdl_demo/features/games/presentation/root/drawer/providers/selected_drawer_menu_provider.dart';
import 'package:bdl_demo/features/games/presentation/root/drawer/widgets/drawer_menu_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final drawerPages = ref.read(drawerPagesProvider);
    final pages = drawerPages.pages;
    final selectedMenuIndex = ref.watch(selectedDrawerMenuProvider);
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: AppTheme.colorPanthersRed,
              ),
              child: Image.asset("assets/images/app_bar_logo.png")),
          ListView.builder(
              shrinkWrap: true,
              itemCount: pages.length,
              itemBuilder: (context, index) => DrawerMenuOption(
                  menuData: pages[index],
                  pageIndex: index,
                  isSelected: index == selectedMenuIndex)),
        ],
      ),
    );
  }
}
