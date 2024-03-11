import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:flutter/material.dart';

class MoreCard extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color? textColor;
  final Widget? icon;
  final VoidCallback onTap;
  const MoreCard(
      {super.key,
      this.text = "More...",
      this.backgroundColor = AppTheme.colorAccent,
      this.textColor,
      this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppTheme.gridSpacing),
          child: Center(
              child: Column(
            children: [
              const Spacer(),
              icon ?? Container(),
              Text(
                text,
                style: context.textTheme.titleMedium
                    ?.copyWith(color: textColor ?? AppTheme.colorTextDark),
              ),
              const Spacer()
            ],
          )),
        ),
      ),
    );
  }
}
