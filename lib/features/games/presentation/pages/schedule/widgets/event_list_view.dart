import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/game_event_card.dart';
import 'package:flutter/material.dart';

class EventListView extends StatelessWidget {
  final List<Game> games;
  const EventListView({Key? key, required this.games}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppTheme.gridSpacing),
      child: ListView.builder(
        itemCount: games.length,
        itemBuilder: (context, index) => GameEventCard(game: games[index]),
      ),
    );
  }
}
