import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/core/presentation/widgets/card_header.dart';
import 'package:bdl_demo/features/games/presentation/pages/home/play/play_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayView extends ConsumerStatefulWidget {
  static const double height = 164;
  const PlayView({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PlayView();
}

class _PlayView extends ConsumerState<PlayView> {
  final cardImages = [
    "bingo.png",
    "raffle.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardHeader(
            text: "Play".toUpperCase(),
            backgroundColor: AppTheme.colorPanthersBlue,
            textColor: AppTheme.colorTextLight,
          ),
          SizedBox(
              height: PlayView.height,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardImages.length,
                itemBuilder: (BuildContext context, int index) =>
                    PlayCard(
                      imageName: cardImages[index]
                    ),
              )),
        ],
      ),
    );
  }
}
