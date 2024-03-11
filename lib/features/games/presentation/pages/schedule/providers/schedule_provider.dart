import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/use_cases/get_schedule.dart';
import 'package:bdl_demo/features/games/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final scheduleUseCaseProvider = Provider<GetScheduleUseCase>(
    (ref) => GetScheduleUseCase(repository: ref.read(repositoryProvider)));

final scheduleProvider =
    StateNotifierProvider<ScheduleStateNotifier, AsyncValue<List<Game>>>((ref) =>
        ScheduleStateNotifier(
            getScheduleUseCase: ref.read(scheduleUseCaseProvider)));

class ScheduleStateNotifier extends StateNotifier<AsyncValue<List<Game>>> {
  final GetScheduleUseCase _getScheduleUseCase;

  ScheduleStateNotifier({required GetScheduleUseCase getScheduleUseCase})
      : _getScheduleUseCase = getScheduleUseCase, super(const AsyncValue.loading());

  Future<void> getSchedule(String teamId) async {
    state = await _getScheduleUseCase.call(teamId);
  }
}
