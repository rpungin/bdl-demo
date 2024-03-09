// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleApiModelImpl _$$ScheduleApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleApiModelImpl(
      games: (json['games'] as List<dynamic>)
          .map((e) => GameApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScheduleApiModelImplToJson(
        _$ScheduleApiModelImpl instance) =>
    <String, dynamic>{
      'games': instance.games,
    };
