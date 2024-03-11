import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class GamesRepository {
  Future<AsyncValue<List<Game>>> getSchedule(
      {required bool upcomingGamesOnly,
      int? limit,
      required bool forceCacheRefresh});

  List<Game> getUpcomingGamesOnly({required List<Game> allGames, int? limit, DateTime? now}) {
    final upcomingGames = allGames.where((element) => element.isFutureGame);
    if (limit != null) {
      return upcomingGames.take(limit).toList();
    } else {
      return upcomingGames.toList();
    }
  }
}
