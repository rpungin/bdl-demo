import 'package:bdl_demo/features/games/presentation/pages/schedule/game_event_card.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/selected_event_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedEventView extends ConsumerWidget {
  const SelectedEventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedGame = ref.watch(selectedEventProvider);
    return selectedGame == null
        ? Container()
        : GameEventCard(game: selectedGame);
  }
}
