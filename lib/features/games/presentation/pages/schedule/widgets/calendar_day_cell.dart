import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/core/presentation/widgets/image_widget.dart';
import 'package:bdl_demo/core/utils/date_format_utils.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:flutter/material.dart';

class CalendarDayCell extends StatelessWidget {
  static const double logoSize = 50;
  final DateTime day;
  final Game? game;
  const CalendarDayCell({super.key, required this.day, this.game});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              _buildHeader(context, day, game),
              Expanded(child: _buildOpponentLogo(context, game)),
              _buildFooter(context, game),
            ],
          )),
    );
  }

  Widget _buildHeader(BuildContext context, DateTime day, Game? game) {
    final Color backgroundColor;
    final Color textColor;
    if (game == null) {
      backgroundColor = Colors.transparent;
      textColor = AppTheme.colorTextDark;
    } else {
      textColor = AppTheme.colorTextLight;
      backgroundColor = game.isHomeGame
          ? AppTheme.colorPanthersRed
          : AppTheme.colorPanthersBlue;
    }
    final textStyle = context.textTheme.bodySmall!.copyWith(color: textColor);
    return ColoredBox(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Row(
          children: [
            Text(
              day.day.toString(),
              style: textStyle.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            game == null
                ? Container()
                : Text(
                    game.isHomeGame ? "HOME" : "AWAY",
                    style:
                        textStyle.copyWith(fontSize: textStyle.fontSize! - 3),
                  )
          ],
        ),
      ),
    );
  }

  Widget _buildOpponentLogo(BuildContext context, Game? game) {
    return game == null
        ? Container()
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: ImageWidget(
              url: game.getOpponentTeam.logo,
              width: logoSize,
              height: logoSize,
            ),
          );
  }

  Widget _buildFooter(BuildContext context, Game? game) {
    if (game == null) return Container();
    final textStyle = context.textTheme.bodySmall!;
    final String text;
    if (game.isFutureGame) {
      text = DateFormatUtils.formatTime(game.startTimeInVenueTZ());
    } else {
      text =
          "${game.winLossString} ${game.firstScoreNumber} - ${game.secondScoreNumber}";
    }
    return Text(
      text,
      style: textStyle.copyWith(
          fontWeight: FontWeight.bold, fontSize: textStyle.fontSize! - 2),
    );
  }
}
