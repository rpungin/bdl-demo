import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/core/presentation/widgets/card_header.dart';
import 'package:bdl_demo/core/presentation/widgets/more_card.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/game_event_card.dart';
import 'package:flutter/material.dart';

class EventsCarousel extends StatelessWidget {
  static const double height = 164;
  final List<Game> games;
  const EventsCarousel({super.key, required this.games});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardHeader(
            text: "Upcoming Games".toUpperCase(),
            backgroundColor: AppTheme.colorPanthersBlue,
            textColor: AppTheme.colorTextLight,
          ),
          SizedBox(
            height: height,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: games.length + 1,
                itemBuilder: (BuildContext context, int index) =>
                    index < games.length
                        ? SizedBox(
                            width: 300,
                            child: GameEventCard(
                              game: games[index],
                              headerColor: AppTheme.colorPanthersRed,
                            ))
                        : MoreCard(onTap: () {})),
          ),
        ],
      ),
    );
  }
}
