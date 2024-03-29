import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/core/presentation/widgets/card_header.dart';
import 'package:bdl_demo/core/utils/date_format_utils.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/event_team_logo_view.dart';
import 'package:flutter/material.dart';

class GameScoreCard extends StatelessWidget {
  final Game game;
  final Color? headerColor;
  const GameScoreCard({Key? key, required this.game, this.headerColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardHeader(
            text: "Last Game".toUpperCase(),
            backgroundColor: AppTheme.colorPanthersBlue,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppTheme.gridSpacing),
            child: Row(
              children: [
                EventTeamLogoView(team: game.awayTeam),
                Expanded(child: _buildCenterView(context, game)),
                EventTeamLogoView(team: game.homeTeam)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCenterView(BuildContext context, Game game) {
    return Column(
      children: [
        Text(
          DateFormatUtils.formatMonthDay(game.startTimeInLocalTZ()),
          style: context.textTheme.titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
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
