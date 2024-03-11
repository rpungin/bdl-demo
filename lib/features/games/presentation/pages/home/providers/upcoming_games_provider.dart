import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/use_cases/get_upcoming_games_use_case.dart';
import 'package:bdl_demo/features/games/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final upcomingGamesProvider = StateNotifierProvider<
        UpcomingGamesStateStateNotifier, AsyncValue<List<Game>>>(
    (ref) => UpcomingGamesStateStateNotifier(
        getScheduleUseCase: GetUpcomingGamesUseCase(
            repository: ref.read(gamesRepositoryProvider))));

class UpcomingGamesStateStateNotifier
    extends StateNotifier<AsyncValue<List<Game>>> {
  static const upcomingEventsLimit = 3;

  final GetUpcomingGamesUseCase _getUpcomingGamesUseCase;

  UpcomingGamesStateStateNotifier(
      {required GetUpcomingGamesUseCase getScheduleUseCase})
      : _getUpcomingGamesUseCase = getScheduleUseCase,
        super(const AsyncValue.loading());

  Future<void> getUpcomingGames({
    required bool forceCacheRefresh,
  }) async {
    state = await _getUpcomingGamesUseCase.call(
        limit: upcomingEventsLimit, forceCacheRefresh: forceCacheRefresh);
  }
}
