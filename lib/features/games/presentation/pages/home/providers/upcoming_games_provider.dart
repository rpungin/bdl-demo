import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/use_cases/get_upcoming_games.dart';
import 'package:bdl_demo/features/games/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final upcomingGamesUseCaseProvider = Provider<GetUpcomingGamesUseCase>(
    (ref) => GetUpcomingGamesUseCase(repository: ref.read(repositoryProvider)));

final upcomingGamesProvider =
    StateNotifierProvider<UpcomingGamesStateNotifier, AsyncValue<List<Game>>>(
        (ref) => UpcomingGamesStateNotifier(
            getUpcomingGamesUseCase: ref.read(upcomingGamesUseCaseProvider)));

class UpcomingGamesStateNotifier extends StateNotifier<AsyncValue<List<Game>>> {
  final GetUpcomingGamesUseCase _getUpcomingGamesUseCase;

  UpcomingGamesStateNotifier(
      {required GetUpcomingGamesUseCase getUpcomingGamesUseCase})
      : _getUpcomingGamesUseCase = getUpcomingGamesUseCase,
        super(const AsyncValue.loading());

  Future<void> getUpcomingGames({required String teamId, int? limit}) async {
    state = await _getUpcomingGamesUseCase.call(teamId, limit: limit);
  }
}
