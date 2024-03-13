import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/features/main/presentation/drawer/providers/selected_drawer_menu_provider.dart';
import 'package:bdl_demo/features/main/presentation/pages/root/page_navigation_menu_data.dart';
import 'package:bdl_demo/features/main/presentation/pages/root/root_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
      leading: menuData.icon,
      title: Text(
        menuData.titleText.toUpperCase(),
        style: context.textTheme.titleMedium?.copyWith(
            color: AppTheme.colorTextDark, fontWeight: FontWeight.bold),
      ),
      onTap: () {
        scaffoldKey.currentState!.closeDrawer();
        ref
            .read(selectedDrawerMenuProvider.notifier)
            .setSelectedPageIndex(pageIndex);
        final routeName = menuData.destinationRouteName;
        if (routeName != null) context.push("/$routeName");
      },
    );
  }
}
