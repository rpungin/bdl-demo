import 'package:bdl_demo/core/constants.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/core/presentation/widgets/error_view.dart';
import 'package:bdl_demo/features/games/presentation/pages/home/providers/upcoming_games_provider.dart';
import 'package:bdl_demo/features/games/presentation/pages/home/widgets/events_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpcomingGamesView extends ConsumerStatefulWidget {
  const UpcomingGamesView({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UpcomingEventsState();
}

class _UpcomingEventsState extends ConsumerState<UpcomingGamesView> {
  @override
  void initState() {
    ref
        .read(upcomingGamesProvider.notifier)
        .getUpcomingGames(teamId: Constants.floridaPanthersTriCode, limit: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final upcomingGamesAsyncValue = ref.watch(upcomingGamesProvider);
    return Padding(
      padding: const EdgeInsets.all(AppTheme.gridSpacing),
      child: upcomingGamesAsyncValue.when(
          data: (data) => EventsCarousel(games: data),
          error: (error, stackTrace) => ErrorView(error),
          loading: () => Container(height: EventsCarousel.height,)),
    );
  }
}
