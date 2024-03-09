import 'package:bdl_demo/features/games/domain/entities/team.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_api_model.freezed.dart';
part 'team_api_model.g.dart';

@freezed
class TeamApiModel with _$TeamApiModel {
  static const floridaPanthersTeamId = 13;
  static const floridaPanthersFranchiseId = 33;
  static const floridaPanthersLeagueId = 133;
  static const floridaPanthersTriCode = "FLA";

  const TeamApiModel._();

  const factory TeamApiModel({
    required int id,
    required String abbrev,
    required String logo,
    required String darkLogo,
    int? score,
  }) = _TeamApiModel;

  factory TeamApiModel.fromJson(Map<String, Object?> json) =>
      _$TeamApiModelFromJson(json);

  factory TeamApiModel.fromEntity(Team team) => TeamApiModel(
      id: team.id,
      abbrev: team.abbrev,
      logo: team.logo,
      darkLogo: team.darkLogo,
      score: team.score);

  Team toEntity() => Team(
      id: id, abbrev: abbrev, logo: logo, darkLogo: darkLogo, score: score);
}
