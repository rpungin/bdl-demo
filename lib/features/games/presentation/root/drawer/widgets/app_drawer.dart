import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/features/games/presentation/root/drawer/providers/app_drawer_provider.dart';
import 'package:bdl_demo/features/games/presentation/root/drawer/providers/selected_drawer_menu_provider.dart';
import 'package:bdl_demo/features/games/presentation/root/page_navigation_menu_data.dart';
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

class DrawerMenuOption extends ConsumerWidget {
  final PageNavigationMenuData menuData;
  final int pageIndex;
  final bool isSelected;
  const DrawerMenuOption(
      {Key? key,
      required this.menuData,
      required this.pageIndex,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      tileColor: isSelected ? AppTheme.colorAccent : Colors.transparent,
      leading: menuData.icon,
      title: Text(
        menuData.titleText.toUpperCase(),
        style: context.textTheme.titleMedium?.copyWith(
            color: AppTheme.colorTextDark, fontWeight: FontWeight.bold),
      ),
      onTap: () {
        ref
            .read(selectedDrawerMenuProvider.notifier)
            .setSelectedPageIndex(pageIndex);
      },
    );
  }
}
