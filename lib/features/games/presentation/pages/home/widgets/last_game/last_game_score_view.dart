import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/core/presentation/widgets/error_view.dart';
import 'package:bdl_demo/features/games/presentation/pages/home/providers/last_game_provider.dart';
import 'package:bdl_demo/features/games/presentation/pages/home/widgets/last_game/game_score_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LastGameScoreView extends ConsumerStatefulWidget {
  const LastGameScoreView({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LastGameScoreView();
}

class _LastGameScoreView extends ConsumerState<LastGameScoreView> {
  @override
  void initState() {
    ref.read(lastGameProvider.notifier).getLastGame(forceCacheRefresh: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final upcomingGamesAsyncValue = ref.watch(lastGameProvider);
    return Padding(
      padding: const EdgeInsets.all(AppTheme.gridSpacing),
      child: upcomingGamesAsyncValue.when(
          data: (data) =>
              data == null ? Container() : GameScoreCard(game: data),
          error: (error, stackTrace) => ErrorView(error),
          loading: () => Container()),
    );
  }
}
