import 'package:bdl_demo/core/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';

@freezed
class Team with _$Team {
  const Team._();
  const factory Team({
    required int id,
    required String abbrev,
    required String logo,
    required String darkLogo,
    int? score,
  }) = _Team;

  bool get isPanthers => abbrev == Constants.floridaPanthersTriCode;
}
