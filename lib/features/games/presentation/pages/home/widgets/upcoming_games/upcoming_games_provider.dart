import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/use_cases/get_schedule_use_case.dart';
import 'package:bdl_demo/features/games/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final upcomingGamesProvider = StateNotifierProvider<
        UpcomingGamesStateStateNotifier, AsyncValue<List<Game>>>(
    (ref) => UpcomingGamesStateStateNotifier(
        getScheduleUseCase: GetScheduleUseCase(repository: ref.read(repositoryProvider))));

class UpcomingGamesStateStateNotifier
    extends StateNotifier<AsyncValue<List<Game>>> {
  static const upcomingEventsLimit = 3;
  final GetScheduleUseCase _getScheduleUseCase;

  UpcomingGamesStateStateNotifier(
      {required GetScheduleUseCase getScheduleUseCase})
      : _getScheduleUseCase = getScheduleUseCase,
        super(const AsyncValue.loading());

  Future<void> getUpcomingGames({
    required String teamId,
    required bool forceCacheRefresh,
  }) async {
    state = await _getScheduleUseCase.call(
        upcomingGamesOnly: true,
        limit: upcomingEventsLimit,
        forceCacheRefresh: forceCacheRefresh);
  }
}
