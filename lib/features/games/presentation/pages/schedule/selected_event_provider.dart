import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedEventProvider = StateNotifierProvider.autoDispose<SelectedEventStateNotifier, Game?>(
    (ref) => SelectedEventStateNotifier(null));

class SelectedEventStateNotifier extends StateNotifier<Game?> {
  SelectedEventStateNotifier(super.state);

  setSelectedGame(Game game) {
    state = game;
  }
}
