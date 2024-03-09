import 'package:bdl_demo/core/constants.dart';
import 'package:bdl_demo/core/utils/time_zone_utils.dart';
import 'package:bdl_demo/features/games/domain/entities/team.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';

@freezed
class Game with _$Game {
  const Game._();
  const factory Game({
    required int id,
    required int season,
    required int gameType,
    required String dateString,
    required String startTimeUTC,
    required String venueUTCOffset,
    required String gameState,
    required String venueName,
    required Team awayTeam,
    required Team homeTeam,
  }) = _Game;

  DateTime startTimeInLocalTZ() =>
      TimeZoneUtils.utcStringToLocalDate(startTimeUTC);

  DateTime startTimeInVenueTZ() =>
      TimeZoneUtils.utcStringToDateWithTimeZoneOffsetString(
          startTimeUTC, venueUTCOffset);

  bool get isFutureGame => gameState == "FUT";

  bool get isHomeGame => homeTeam.abbrev == Constants.floridaPanthersTriCode;

  Team get getOpponentTeam => homeTeam.isPanthers ? awayTeam : homeTeam;

  Team get getPanthersTeam => homeTeam.isPanthers ? homeTeam : awayTeam;

  String get winLossString {
    final panthersScore = getPanthersTeam.score;
    final opponentScore = getOpponentTeam.score;
    if (isFutureGame || panthersScore == null || opponentScore == null) {
      return "N/A";
    } else {
      return panthersScore > opponentScore
          ? "W"
          : panthersScore < opponentScore
              ? "L"
              : "";
    }
  }

  int? get firstScoreNumber => awayTeam.score;

  int? get secondScoreNumber => homeTeam.score;
}
