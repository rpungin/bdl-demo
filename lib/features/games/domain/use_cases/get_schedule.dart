import 'package:bdl_demo/core/utils/time_zone_utils.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/repositories/games_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetScheduleUseCase {
  final GamesRepository _repository;

  GetScheduleUseCase({required GamesRepository repository})
      : _repository = repository;

  Future<AsyncValue<List<Game>>> call(String teamId) async {
    final allGamesAsyncValue = await _repository.getSchedule(teamId);
    return allGamesAsyncValue;

    //filter only upcoming games
    // return allGamesAsyncValue.when(
    //     data: (allGames) => AsyncValue.data(getUpcomingGamesOnly(allGames)),
    //     error: ((error, stackTrace) => allGamesAsyncValue),
    //     loading: () => allGamesAsyncValue);
  }

  List<Game> getUpcomingGamesOnly(List<Game> allGames) {
    final now = DateTime.now();
    return allGames
        .where((element) =>
            TimeZoneUtils.utcStringToLocalDate(element.startTimeUTC)
                .isAfter(now))
        .toList();
  }
}
