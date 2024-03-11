import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/use_cases/get_last_game_use_case.dart';
import 'package:bdl_demo/features/games/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lastGameProvider =
    StateNotifierProvider<LastGameStateNotifier, AsyncValue<Game?>>((ref) =>
        LastGameStateNotifier(
            getScheduleUseCase:
                GetLastGameUseCase(repository: ref.read(repositoryProvider))));

class LastGameStateNotifier extends StateNotifier<AsyncValue<Game?>> {
  final GetLastGameUseCase _getLastGameUseCase;

  LastGameStateNotifier({required GetLastGameUseCase getScheduleUseCase})
      : _getLastGameUseCase = getScheduleUseCase,
        super(const AsyncValue.loading());

  Future<void> getLastGame({
    required bool forceCacheRefresh,
  }) async {
    state =
        await _getLastGameUseCase.call(forceCacheRefresh: forceCacheRefresh);
  }
}
