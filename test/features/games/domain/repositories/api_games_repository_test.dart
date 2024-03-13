import 'dart:developer';
import 'dart:io';

import 'package:bdl_demo/core/constants.dart';
import 'package:bdl_demo/features/games/data/data_sources/api/nhl_api.dart';
import 'package:bdl_demo/features/games/data/models/game_api_model.dart';
import 'package:bdl_demo/features/games/data/models/schedule_api_model.dart';
import 'package:bdl_demo/features/games/data/models/team_api_model.dart';
import 'package:bdl_demo/features/games/data/models/venue_api_model.dart';
import 'package:bdl_demo/features/games/data/repositories/api_games_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:retrofit/retrofit.dart';

class MockApi extends Mock implements NhlApi {}

void main() {
  const team = TeamApiModel(id: 1, abbrev: "ABC", logo: "", darkLogo: "");
  const venue = VenueApiModel("Venue");

  const testGames = [
    GameApiModel(
        id: 0,
        season: 1,
        gameType: 1,
        gameDate: "023-01-01",
        startTimeUTC: "2023-01-01:18:00:00Z",
        venueUTCOffset: "-04:00",
        gameState: "FINAL", // <- game is in the past
        venue: venue,
        awayTeam: team,
        homeTeam: team),
    GameApiModel(
        id: 1,
        season: 1,
        gameType: 1,
        gameDate: "2024-02-01",
        startTimeUTC: "2024-02-01:18:00:00Z",
        venueUTCOffset: "-04:00",
        gameState: "FUT", // <- game is in the future
        venue: venue,
        awayTeam: team,
        homeTeam: team),
    GameApiModel(
        id: 2,
        season: 1,
        gameType: 1,
        gameDate: "2024-02-01",
        startTimeUTC: "2024-02-01:18:00:00Z",
        venueUTCOffset: "-04:00",
        gameState: "FUT", // <- game is in the future
        venue: venue,
        awayTeam: team,
        homeTeam: team),
  ];

  const testScheduleApiModel = ScheduleApiModel(games: testGames);
  final testResponse = Response(
      data: testScheduleApiModel,
      requestOptions: RequestOptions(),
      statusCode: HttpStatus.ok);

  final mockApi = MockApi();
  final sut = ApiGamesRepository(api: mockApi);

  when(() => mockApi.getSchedule(
            teamTriCode: Constants.floridaPanthersTriCode,
          ))
      .thenAnswer((inv) =>
          Future.value(HttpResponse(testScheduleApiModel, testResponse)));

  setUp(() => {});

  test("Get All Events", () async {
    final gamesAsyncValue = (await sut.getSchedule(
        upcomingGamesOnly: false, forceCacheRefresh: false));
    gamesAsyncValue.when(
        data: (games) {
          expect(games.length, 3, reason: "Number of all games should be 3");
          expect(games[0].id, 0, reason: "The first game should have id 0");
          expect(games[1].id, 1, reason: "The second game should have id 1");
          expect(games[2].id, 2, reason: "The third game should have id 2");
        },
        error: (error, stackTrace) {
          log("Error: $error\n$stackTrace");
        },
        loading: () {});
  });

  test("Upcoming Events No Limit", () async {
    final gamesAsyncValue = (await sut.getSchedule(
        upcomingGamesOnly: true, forceCacheRefresh: false));
    gamesAsyncValue.when(
        data: (games) {
          expect(games.length, 2, reason: "Number of all upcoming games should be 2");
          expect(games[0].id, 1, reason: "The first upcoming game should have id 1");
          expect(games[1].id, 2, reason: "The second upcoming game should have id 2");
        },
        error: (error, stackTrace) {},
        loading: () {});
  });

  test("Upcoming Events With Limit", () async {
    final gamesAsyncValue = (await sut.getSchedule(
        upcomingGamesOnly: true, limit: 1, forceCacheRefresh: false));
    gamesAsyncValue.when(
        data: (games) {
          expect(games.length, 1, reason: "Number of upcoming games with limit 1 should be 1");
          expect(games[0].id, 1, reason: "The fist upcoming game should have id 1");
        },
        error: (error, stackTrace) {},
        loading: () {});
  });
}
