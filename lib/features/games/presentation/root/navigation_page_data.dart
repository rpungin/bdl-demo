import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/features/games/presentation/root/root_page.dart';
import 'package:flutter/material.dart';

class NavigationPageData {
  final BuildContext context;
  final NavigationPageId id;
  final String titleText;
  final Widget? titleWidget;
  final Widget icon;
  final Widget destinationPage;
  final BottomNavigationBarItem bottomNavigationBarItem;
  NavigationPageData(this.context,
      {required this.id,
      required this.titleText,
      this.titleWidget,
      required this.icon,
      required this.destinationPage})
      : bottomNavigationBarItem =
            BottomNavigationBarItem(label: titleText, icon: icon);

  Widget get title =>
      titleWidget ??
      Text(titleText.toUpperCase(),
          style: context.textTheme.titleLarge!.copyWith(
              color: AppTheme.colorTextLight, fontWeight: FontWeight.bold));
}
