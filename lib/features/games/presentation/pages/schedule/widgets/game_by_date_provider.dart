import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final gameByDateProvider =
    Provider<GameByDate>((ref) => GameByDate());

class GameByDate {
  static final _dateFormat = DateFormat("yyyy-MM-dd");

  final Map<String, Game> gamesByDateString = {};

  void setGames(List<Game> games) {
    for (final game in games) {
      gamesByDateString[game.dateString] = game;
    }
  }

  Game? getGameForDate(DateTime date) =>
      gamesByDateString[_dateFormat.format(date)];
}
