import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class GamesRepository {
    Future<AsyncValue<List<Game>>> getSchedule(String teamId);
}