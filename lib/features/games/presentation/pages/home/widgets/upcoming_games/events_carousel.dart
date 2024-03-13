import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/core/presentation/widgets/card_header.dart';
import 'package:bdl_demo/core/presentation/widgets/more_card.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/game_event_card.dart';
import 'package:bdl_demo/features/games/presentation/root/providers/root_pages_provider.dart';
import 'package:bdl_demo/features/games/presentation/root/providers/selected_root_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventsCarousel extends ConsumerWidget {
  static const double height = 165;
  final List<Game> games;
  const EventsCarousel({super.key, required this.games});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                        : MoreCard(
                            icon: const Icon(Icons.calendar_month),
                            onTap: () => ref
                                .read(selectedRootPageProvider.notifier)
                                .setSelectedPage(RootPageId.schedule)),
              )),
        ],
      ),
    );
  }
}
