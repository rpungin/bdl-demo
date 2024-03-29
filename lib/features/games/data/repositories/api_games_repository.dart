import 'dart:developer';
import 'dart:io';

import 'package:bdl_demo/core/constants.dart';
import 'package:bdl_demo/features/games/data/data_sources/api/nhl_api.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/domain/repositories/games_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApiGamesRepository extends GamesRepository {
  final NhlApi _api;

  List<Game> _cache = [];

  ApiGamesRepository({required NhlApi api}) : _api = api;

  @override
  Future<AsyncValue<List<Game>>> getSchedule({
    required bool upcomingGamesOnly,
    int? limit,
    required bool forceCacheRefresh,
    bool returnCacheOnError = true,
  }) async {
    final allGamesAsyncData = await _getAllGames(
        forceCacheRefresh: forceCacheRefresh,
        returnCacheOnError: returnCacheOnError);
    if (upcomingGamesOnly) {
      return allGamesAsyncData.when(
          data: (data) => AsyncValue.data(
              getUpcomingGamesOnly(allGames: data, limit: limit)),
          error: (error, stackTrace) => allGamesAsyncData,
          loading: () => allGamesAsyncData);
    } else {
      return allGamesAsyncData;
    }
  }

  Future<AsyncValue<List<Game>>> _getAllGames(
      {required bool forceCacheRefresh,
      required bool returnCacheOnError}) async {
    try {
      if (_cache.isEmpty || forceCacheRefresh) {
        final httpResponse =
            await _api.getSchedule(teamTriCode: Constants.floridaPanthersTriCode);
        if (httpResponse.response.statusCode == HttpStatus.ok) {
          _cache = httpResponse.data.games.map((e) => e.toEntity()).toList();
          return AsyncValue.data(_cache);
        } else {
          final error = NhlApi.dioExceptionFromResponse(httpResponse);
          if (_cache.isNotEmpty && returnCacheOnError) {
            log("ERROR Bad HTTP status ${httpResponse.response.statusCode} getting all games: $error \n${StackTrace.current}");
            return AsyncValue.data(_cache);
          } else {
            return AsyncValue.error(error, StackTrace.current);
          }
        }
      } else {
        return AsyncValue.data(_cache);
      }
    } catch (error, stackTrace) {
      if (_cache.isNotEmpty && returnCacheOnError) {
        log("ERROR getting schedule: $error \n$stackTrace");
        return AsyncValue.data(_cache);
      } else {
        return AsyncValue.error(error, StackTrace.current);
      }
    }
  }
}
