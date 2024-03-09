import 'package:bdl_demo/features/games/data/models/team_api_model.dart';
import 'package:bdl_demo/features/games/data/models/venue_api_model.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_api_model.freezed.dart';
part 'game_api_model.g.dart';

@freezed
class GameApiModel with _$GameApiModel {
  const GameApiModel._();
  const factory GameApiModel({
    required int id,
    required int season,
    required int gameType,
    required String gameDate,
    required String startTimeUTC,
    required String venueUTCOffset,
    required String gameState,
    required VenueApiModel venue,
    required TeamApiModel awayTeam,
    required TeamApiModel homeTeam,
  }) = _GameApiModel;

  factory GameApiModel.fromJson(Map<String, Object?> json) =>
      _$GameApiModelFromJson(json);

  factory GameApiModel.fromEntity(Game game) => GameApiModel(
      id: game.id,
      season: game.season,
      gameType: game.gameType,
      gameDate: game.dateString,
      startTimeUTC: game.startTimeUTC,
      venueUTCOffset: game.venueUTCOffset,
      gameState: game.gameState,
      venue: VenueApiModel(game.venueName),
      awayTeam: TeamApiModel.fromEntity(game.awayTeam),
      homeTeam: TeamApiModel.fromEntity(game.homeTeam));

  Game toEntity() => Game(
      id: id,
      season: season,
      gameType: gameType,
      dateString: gameDate,
      startTimeUTC: startTimeUTC,
      venueUTCOffset: venueUTCOffset,
      gameState: gameState,
      venueName: venue.name,
      awayTeam: awayTeam.toEntity(),
      homeTeam: homeTeam.toEntity());
}
