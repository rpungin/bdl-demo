import 'package:bdl_demo/core/utils/time_zone_utils.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/entities/team.dart';
import 'package:bdl_demo/features/games/domain/repositories/games_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

class TestingRepository extends GamesRepository {
  @override
  Future<AsyncValue<List<Game>>> getSchedule(
      {required String teamId,
      required bool upcomingGamesOnly,
      int? limit,
      required bool forceCacheRefresh}) async {
    return const AsyncValue.data([]);
  }
}

void main() {
  const team = Team(id: 1, abbrev: "ABC", logo: "", darkLogo: "");

  test("getUpcomingGamesOnly", () {
    const List<Game> allGames = [
      Game(
          id: 1,
          season: 1,
          gameType: 1,
          dateString: "2023-01-01",
          startTimeUTC: "2023-01-01T18:00:00Z",
          venueUTCOffset: "-04:00",
          gameState: "state",
          venueName: "venue",
          awayTeam: team,
          homeTeam: team),
      Game(
          id: 2,
          season: 1,
          gameType: 1,
          dateString: "2023-02-01",
          startTimeUTC: "2024-02-01T18:00:00Z",
          venueUTCOffset: "-04:00",
          gameState: "state",
          venueName: "venue",
          awayTeam: team,
          homeTeam: team),
      Game(
          id: 3,
          season: 3,
          gameType: 1,
          dateString: "2023-03-01",
          startTimeUTC: "2024-03-01T18:00:00Z",
          venueUTCOffset: "-04:00",
          gameState: "state",
          venueName: "venue",
          awayTeam: team,
          homeTeam: team),
    ];

    final repository = TestingRepository();
    final now = TimeZoneUtils.utcStringToLocalDate("2024-01-01T18:00:00");
    final upcomingGames = repository.getUpcomingGamesOnly(allGames: allGames, now: now);
    expect(upcomingGames.length, 2);
    expect(upcomingGames[0], allGames[1]);
    expect(upcomingGames[1], allGames[2]);

        final upcomingGamesLimit1 = repository.getUpcomingGamesOnly(allGames: allGames, now: now, limit: 1);
    expect(upcomingGamesLimit1.length, 1);
    expect(upcomingGamesLimit1[0], allGames[1]);
  });
}
