import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/repositories/games_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetUpcomingGamesUseCase {
  final GamesRepository _repository;

  GetUpcomingGamesUseCase({required GamesRepository repository})
      : _repository = repository;

  Future<AsyncValue<List<Game>>> call(
      {int? limit, required bool forceCacheRefresh}) async {
    final allGamesAsyncValue = await _repository.getSchedule(
        upcomingGamesOnly: true,
        limit: limit,
        forceCacheRefresh: forceCacheRefresh);
    return allGamesAsyncValue;
  }
}
