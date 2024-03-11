import 'package:bdl_demo/core/utils/time_zone_utils.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/repositories/games_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetUpcomingGamesUseCase {
  final GamesRepository _repository;

  GetUpcomingGamesUseCase({required GamesRepository repository})
      : _repository = repository;

  Future<AsyncValue<List<Game>>> call(String teamId, {int? limit}) async {
    final allGamesAsyncValue = await _repository.getSchedule(teamId);

    return allGamesAsyncValue.when(
        data: (allGames) => AsyncValue.data(getUpcomingGamesOnly(allGames, limit: limit)),
        error: ((error, stackTrace) => allGamesAsyncValue),
        loading: () => allGamesAsyncValue);
  }

  List<Game> getUpcomingGamesOnly(List<Game> allGames, {int? limit}) {
    final now = DateTime.now();
    final upcomingGames = allGames.where((element) =>
        TimeZoneUtils.utcStringToLocalDate(element.startTimeUTC).isAfter(now));
    if (limit != null) {
      return upcomingGames.take(limit).toList();
    } else {
      return upcomingGames.toList();
    }
  }
}
