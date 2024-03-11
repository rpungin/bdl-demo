import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/core/presentation/widgets/page_background.dart';
import 'package:bdl_demo/features/games/presentation/pages/home/play/play_view.dart';
import 'package:bdl_demo/features/games/presentation/pages/home/widgets/last_game/last_game_score_view.dart';
import 'package:bdl_demo/features/games/presentation/pages/home/widgets/upcoming_games/upcoming_games_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const PageBackground(),
        SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/panthers_30_anniversary.png"),
              const LastGameScoreView(),
              AppTheme.gridDividerHorizontal,
              const UpcomingGamesView(),
              AppTheme.gridDividerHorizontal,
              const PlayView(),
            ],
          ),
        )
      ],
    );
  }
}
