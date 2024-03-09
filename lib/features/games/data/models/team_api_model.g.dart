// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamApiModelImpl _$$TeamApiModelImplFromJson(Map<String, dynamic> json) =>
    _$TeamApiModelImpl(
      id: json['id'] as int,
      abbrev: json['abbrev'] as String,
      logo: json['logo'] as String,
      darkLogo: json['darkLogo'] as String,
      score: json['score'] as int?,
    );

Map<String, dynamic> _$$TeamApiModelImplToJson(_$TeamApiModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'abbrev': instance.abbrev,
      'logo': instance.logo,
      'darkLogo': instance.darkLogo,
      'score': instance.score,
    };
