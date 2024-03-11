import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/entities/team.dart';
import 'package:bdl_demo/features/games/domain/repositories/games_repository.dart';
import 'package:bdl_demo/features/games/domain/use_cases/get_last_game_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements GamesRepository {}

void main() {
  const team = Team(id: 1, abbrev: "ABC", logo: "", darkLogo: "");

  final GamesRepository repository = MockRepository();

  test("Empty repository", () async {
    when(() => repository.getSchedule(
            upcomingGamesOnly: false, forceCacheRefresh: false))
        .thenAnswer((_) => Future.value(const AsyncValue<List<Game>>.data([])));

    final sut = GetLastGameUseCase(repository: repository);
    expect((await sut.call(forceCacheRefresh: false)).asData!.value, null);
  });

  test("All games in the future", () async {
    const List<Game> testGames = [
      Game(
          id: 1,
          season: 1,
          gameType: 1,
          dateString: "2023-01-01",
          startTimeUTC: "2023-01-01:18:00:00Z",
          venueUTCOffset: "-04:00",
          gameState: "FUT", // <- game is in the future
          venueName: "venue",
          awayTeam: team,
          homeTeam: team),
      Game(
          id: 2,
          season: 1,
          gameType: 1,
          dateString: "2024-01-01",
          startTimeUTC: "2024-01-01:18:00:00Z",
          venueUTCOffset: "-04:00",
          gameState: "FUT", // <- game is in the future
          venueName: "venue",
          awayTeam: team,
          homeTeam: team),
    ];

    when(() =>
        repository.getSchedule(
            upcomingGamesOnly: false, forceCacheRefresh: false)).thenAnswer(
        (inv) => Future.value(const AsyncValue<List<Game>>.data(testGames)));

    final sut = GetLastGameUseCase(repository: repository);
    expect((await sut.call(forceCacheRefresh: false)).asData!.value, null);
  });

  test("All games in the past", () async {
    const List<Game> testGames = [
      Game(
          id: 1,
          season: 1,
          gameType: 1,
          dateString: "2023-01-01",
          startTimeUTC: "2023-01-01:18:00:00Z",
          venueUTCOffset: "-04:00",
          gameState: "FINAL", // <- game is in the past
          venueName: "venue",
          awayTeam: team,
          homeTeam: team),
      Game(
          id: 2,
          season: 1,
          gameType: 1,
          dateString: "2024-01-01",
          startTimeUTC: "2024-01-01:18:00:00Z",
          venueUTCOffset: "-04:00",
          gameState: "FINAL", // <- game is in the past
          venueName: "venue",
          awayTeam: team,
          homeTeam: team),
    ];

    when(() =>
        repository.getSchedule(
            upcomingGamesOnly: false, forceCacheRefresh: false)).thenAnswer(
        (inv) => Future.value(const AsyncValue<List<Game>>.data(testGames)));

    final sut = GetLastGameUseCase(repository: repository);
    expect((await sut.call(forceCacheRefresh: false)).asData!.value!.id, 2);
  });

  test("Some games in the past and some in the future", () async {
    const List<Game> testGames = [
      Game(
          id: 1,
          season: 1,
          gameType: 1,
          dateString: "2023-01-01",
          startTimeUTC: "2023-01-01:18:00:00Z",
          venueUTCOffset: "-04:00",
          gameState: "FINAL", // <- game is in the past
          venueName: "venue",
          awayTeam: team,
          homeTeam: team),
      Game(
          id: 2,
          season: 1,
          gameType: 1,
          dateString: "2024-01-01",
          startTimeUTC: "2024-01-01:18:00:00Z",
          venueUTCOffset: "-04:00",
          gameState: "FINAL", // <- game is in the past
          venueName: "venue",
          awayTeam: team,
          homeTeam: team),
      Game(
          id: 3,
          season: 1,
          gameType: 1,
          dateString: "2024-02-01",
          startTimeUTC: "2024-02-01:18:00:00Z",
          venueUTCOffset: "-04:00",
          gameState: "FUT", // <- game is in the future
          venueName: "venue",
          awayTeam: team,
          homeTeam: team),
    ];

    when(() =>
        repository.getSchedule(
            upcomingGamesOnly: false, forceCacheRefresh: false)).thenAnswer(
        (inv) => Future.value(const AsyncValue<List<Game>>.data(testGames)));

    final sut = GetLastGameUseCase(repository: repository);
    expect((await sut.call(forceCacheRefresh: false)).asData!.value!.id, 2);
  });
}
