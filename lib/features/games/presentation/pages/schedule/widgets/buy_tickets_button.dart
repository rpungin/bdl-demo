import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:flutter/material.dart';

class BuyTicketsButton extends StatelessWidget {
  final Game game;
  const BuyTicketsButton({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(children: [
        Image.asset(
          "assets/images/icon_tickets.png",
          width: 30,
        ),
        AppTheme.gridDividerVertical,
        Text(
          "Buy Tickets",
          style: context.textTheme.labelMedium,
        )
      ]),
    );
  }
}
