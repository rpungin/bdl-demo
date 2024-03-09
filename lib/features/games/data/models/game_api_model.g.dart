// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameApiModelImpl _$$GameApiModelImplFromJson(Map<String, dynamic> json) =>
    _$GameApiModelImpl(
      id: json['id'] as int,
      season: json['season'] as int,
      gameType: json['gameType'] as int,
      gameDate: json['gameDate'] as String,
      startTimeUTC: json['startTimeUTC'] as String,
      venueUTCOffset: json['venueUTCOffset'] as String,
      gameState: json['gameState'] as String,
      venue: VenueApiModel.fromJson(json['venue'] as Map<String, dynamic>),
      awayTeam: TeamApiModel.fromJson(json['awayTeam'] as Map<String, dynamic>),
      homeTeam: TeamApiModel.fromJson(json['homeTeam'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameApiModelImplToJson(_$GameApiModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'season': instance.season,
      'gameType': instance.gameType,
      'gameDate': instance.gameDate,
      'startTimeUTC': instance.startTimeUTC,
      'venueUTCOffset': instance.venueUTCOffset,
      'gameState': instance.gameState,
      'venue': instance.venue,
      'awayTeam': instance.awayTeam,
      'homeTeam': instance.homeTeam,
    };
