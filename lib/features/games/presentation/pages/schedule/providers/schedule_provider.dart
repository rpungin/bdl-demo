import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/use_cases/get_schedule_use_case.dart';
import 'package:bdl_demo/features/games/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final scheduleProvider =
    StateNotifierProvider<ScheduleStateNotifier, AsyncValue<List<Game>>>(
        (ref) => ScheduleStateNotifier( getScheduleUseCase: 
            GetScheduleUseCase(repository: ref.read(repositoryProvider))));

class ScheduleStateNotifier extends StateNotifier<AsyncValue<List<Game>>> {
  final GetScheduleUseCase _getScheduleUseCase;

  ScheduleStateNotifier({required GetScheduleUseCase getScheduleUseCase})
      : _getScheduleUseCase = getScheduleUseCase,
        super(const AsyncValue.loading());

  Future<void> getSchedule({
    required bool upcomingGamesOnly,
    int? limit,
    required bool forceCacheRefresh,
  }) async {
    state = await _getScheduleUseCase.call(upcomingGamesOnly: upcomingGamesOnly, limit: limit, forceCacheRefresh: forceCacheRefresh);
  }
}
