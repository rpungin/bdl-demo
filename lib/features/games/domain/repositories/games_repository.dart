import 'package:bdl_demo/core/utils/time_zone_utils.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class GamesRepository {
  Future<AsyncValue<List<Game>>> getSchedule(
      {required String teamId,
      required bool upcomingGamesOnly,
      int? limit,
      required bool forceCacheRefresh});

  List<Game> getUpcomingGamesOnly({required List<Game> allGames, int? limit, DateTime? now}) {
    final nowFinal = now ?? DateTime.now();
    final upcomingGames = allGames.where((element) =>
        TimeZoneUtils.utcStringToLocalDate(element.startTimeUTC).isAfter(nowFinal));
    if (limit != null) {
      return upcomingGames.take(limit).toList();
    } else {
      return upcomingGames.toList();
    }
  }
}
