import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/features/games/presentation/root/providers/root_pages_provider.dart';
import 'package:flutter/material.dart';

class PageNavigationMenuData {
  final BuildContext context;
  final RootPageId id;
  final String titleText;
  final Widget? titleWidget;
  final Widget icon;
  final Widget? destinationPage;
  final String? destinationRouteName;
  final BottomNavigationBarItem bottomNavigationBarItem;
  PageNavigationMenuData(this.context,
      {required this.id,
      required this.titleText,
      this.titleWidget,
      required this.icon,
      this.destinationPage,
      this.destinationRouteName,
      })
      : bottomNavigationBarItem =
            BottomNavigationBarItem(label: titleText, icon: icon);

  Widget get title =>
      titleWidget ??
      Text(titleText.toUpperCase(),
          style: context.textTheme.titleLarge!.copyWith(
              color: AppTheme.colorTextLight, fontWeight: FontWeight.bold));
}
