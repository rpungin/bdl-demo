import 'dart:developer';
import 'dart:io';

import 'package:bdl_demo/features/games/data/data_sources/api/nhl_api.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/repositories/games_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApiGamesRepository implements GamesRepository {
  final NhlApi _api;

  ApiGamesRepository({required NhlApi api}) : _api = api;
  @override
  Future<AsyncValue<List<Game>>> getSchedule(String teamId) async {
    try {
      final httpResponse = await _api.getSchedule(teamId);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return AsyncValue.data(
            httpResponse.data.games.map((e) => e.toEntity()).toList());
      } else {
        return AsyncValue.error(
            NhlApi.dioExceptionFromResponse(httpResponse), StackTrace.current);
      }
    } catch (error, stackTrace) {
      log("Error getting schedule for team $teamId. $error \n$stackTrace");
      return AsyncValue.error(error, stackTrace);
    }
  }
}
