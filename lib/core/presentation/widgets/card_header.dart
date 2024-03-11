import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final TextStyle? textStyle;
  final Color? textColor;
  const CardHeader(
      {super.key,
      required this.text,
      this.backgroundColor = AppTheme.colorPanthersBlue,
      this.textStyle,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Text(
          text,
          style: textStyle ??
              context.textTheme.titleLarge
                  ?.copyWith(color: textColor ?? AppTheme.colorTextLight),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
