import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/entities/team.dart';
import 'package:bdl_demo/features/games/domain/repositories/games_repository.dart';
import 'package:bdl_demo/features/games/domain/use_cases/get_schedule.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'get_schedule_test.mocks.dart';

@GenerateMocks([GamesRepository])
void main() {
  const team = Team(id: 1, abbrev: "ABC", logo: "", darkLogo: "");
  test("getUpcomingGamesOnly", () {
    const List<Game> allGames = [
      Game(
          id: 1,
          season: 1,
          gameType: 1,
          dateString: "2023-01-01",
          startTimeUTC: "2023-01-01:18:00:00Z",
          venueUTCOffset: "-04:00",
          gameState: "state",
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
          gameState: "state",
          venueName: "venue",
          awayTeam: team,
          homeTeam: team),
    ];

    final getScheduleUseCase =
        GetScheduleUseCase(repository: MockGamesRepository());

    final upcomingGames = getScheduleUseCase.getUpcomingGamesOnly(allGames);
    expect(upcomingGames.length, 1);
    expect(upcomingGames.first, allGames[1]);
  });
}
