import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/entities/team.dart';
import 'package:bdl_demo/features/games/domain/repositories/games_repository.dart';
import 'package:bdl_demo/features/games/domain/use_cases/get_schedule_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements GamesRepository {}

void main() {
  const team = Team(id: 1, abbrev: "ABC", logo: "", darkLogo: "");
  List<Game> testGames = [];

  final GamesRepository repository = MockRepository();

  when(() => repository.getSchedule(
          upcomingGamesOnly: false, forceCacheRefresh: false))
      .thenAnswer(
          (inv) => Future.value(AsyncValue<List<Game>>.data(testGames)));

  setUp(() => {});

  test("Get Schedule", () async {
    testGames = const [
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

    final sut = GetScheduleUseCase(repository: repository);
    final games =
        (await sut.call(upcomingGamesOnly: false, forceCacheRefresh: false))
            .asData!
            .value;
    expect(games.length, 2);
    expect(games[0].id, 1);
    expect(games[1].id, 2);
  });

  test("Upcoming only with no limit", () async {
    testGames = const [
      Game(
          id: 1,
          season: 1,
          gameType: 1,
          dateString: "2024-01-01",
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
          dateString: "2024-02-01",
          startTimeUTC: "2024-02-01:18:00:00Z",
          venueUTCOffset: "-04:00",
          gameState: "FUT", // <- game is in the future
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

    final sut = GetScheduleUseCase(repository: repository);
    final games =
        (await sut.call(upcomingGamesOnly: true, forceCacheRefresh: false, ))
            .asData!
            .value;
    expect(games.length, 2);
    expect(games[0].id, 2);
    expect(games[1].id, 3);
  });
}
