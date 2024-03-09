import 'package:bdl_demo/features/games/data/models/game_api_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_api_model.freezed.dart';
part 'schedule_api_model.g.dart';

@freezed
class ScheduleApiModel with _$ScheduleApiModel {
  const ScheduleApiModel._();
  const factory ScheduleApiModel({
    required List<GameApiModel> games,
  }) = _ScheduleApiModel;

  factory ScheduleApiModel.fromJson(Map<String, Object?> json) =>
      _$ScheduleApiModelFromJson(json);
}
