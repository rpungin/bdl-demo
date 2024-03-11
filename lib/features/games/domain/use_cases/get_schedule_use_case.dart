import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/repositories/games_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetScheduleUseCase {
  final GamesRepository _repository;

  GetScheduleUseCase({required GamesRepository repository})
      : _repository = repository;

  Future<AsyncValue<List<Game>>> call(
      {required String teamId, required bool upcomingGamesOnly, int? limit, required bool forceCacheRefresh}) async {
    final allGamesAsyncValue =
        await _repository.getSchedule(teamId: teamId, upcomingGamesOnly: upcomingGamesOnly, limit: limit, forceCacheRefresh: forceCacheRefresh);
    return allGamesAsyncValue;
  }
}
