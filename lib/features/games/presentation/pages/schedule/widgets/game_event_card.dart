import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/core/presentation/widgets/card_header.dart';
import 'package:bdl_demo/core/utils/date_format_utils.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/buy_tickets_button.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/event_team_logo_view.dart';
import 'package:flutter/material.dart';

class GameEventCard extends StatelessWidget {
  final Game game;
  final Color? headerColor;
  const GameEventCard({
    Key? key,
    required this.game,
    this.headerColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardHeader(
            text: DateFormatUtils.formatMonthDay(game.startTimeInLocalTZ()),
            backgroundColor: headerColor ?? (game.isHomeGame
                ? AppTheme.colorPanthersRed
                : AppTheme.colorPanthersBlue),
          ),
          Row(
            children: [
              EventTeamLogoView(team: game.awayTeam),
              Expanded(child: _buildCenterView(context, game)),
              EventTeamLogoView(team: game.homeTeam)
            ],
          ),
          game.isFutureGame
              ? Row(
                  children: [
                    const Spacer(),
                    BuyTicketsButton(game: game),
                    const Spacer()
                  ],
                )
              : Container(),
        ],
      ),
    );
  }

  Widget _buildCenterView(BuildContext context, Game game) {
    return Column(
      children: [
        Text(
          "${game.awayTeam.abbrev} @ ${game.homeTeam.abbrev}",
          textAlign: TextAlign.center,
          style: context.textTheme.headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          game.venueName,
          textAlign: TextAlign.center,
        ),
        Text(
          DateFormatUtils.formatTime(game.startTimeInVenueTZ()),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
