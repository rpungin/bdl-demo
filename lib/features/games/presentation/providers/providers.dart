import 'package:bdl_demo/features/games/data/data_sources/api/nhl_api.dart';
import 'package:bdl_demo/features/games/data/repositories/api_games_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiProvider = Provider((ref) => NhlApi(Dio()));

final gamesRepositoryProvider =
    Provider((ref) => ApiGamesRepository(api: ref.read(apiProvider)));
