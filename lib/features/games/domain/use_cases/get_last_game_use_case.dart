import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/repositories/games_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetLastGameUseCase {
  final GamesRepository _repository;

  GetLastGameUseCase({required GamesRepository repository})
      : _repository = repository;

  Future<AsyncValue<Game?>> call(
      {required bool forceCacheRefresh}) async {
    final allGamesAsyncValue = await _repository.getSchedule(
        upcomingGamesOnly: false,
        forceCacheRefresh: forceCacheRefresh);
    return allGamesAsyncValue.when(
        data: (data) => AsyncValue.data(_findLastGame(games: data)),
        error: (error, stackTrace) => AsyncValue.error(
            allGamesAsyncValue.error!, allGamesAsyncValue.stackTrace!),
        loading: () => const AsyncValue.loading());
  }

  Game? _findLastGame({required List<Game> games}) {
    if (games.isEmpty) return null;
    final firstFutureGameIndex =
        games.indexWhere((element) => element.isFutureGame);
    if (firstFutureGameIndex == -1) {
      return games.last;
    }
    if (firstFutureGameIndex == 0) return null;
    return games[firstFutureGameIndex - 1];
  }
}
