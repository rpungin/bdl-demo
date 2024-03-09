// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameApiModel _$GameApiModelFromJson(Map<String, dynamic> json) {
  return _GameApiModel.fromJson(json);
}

/// @nodoc
mixin _$GameApiModel {
  int get id => throw _privateConstructorUsedError;
  int get season => throw _privateConstructorUsedError;
  int get gameType => throw _privateConstructorUsedError;
  String get gameDate => throw _privateConstructorUsedError;
  String get startTimeUTC => throw _privateConstructorUsedError;
  String get venueUTCOffset => throw _privateConstructorUsedError;
  String get gameState => throw _privateConstructorUsedError;
  VenueApiModel get venue => throw _privateConstructorUsedError;
  TeamApiModel get awayTeam => throw _privateConstructorUsedError;
  TeamApiModel get homeTeam => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameApiModelCopyWith<GameApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameApiModelCopyWith<$Res> {
  factory $GameApiModelCopyWith(
          GameApiModel value, $Res Function(GameApiModel) then) =
      _$GameApiModelCopyWithImpl<$Res, GameApiModel>;
  @useResult
  $Res call(
      {int id,
      int season,
      int gameType,
      String gameDate,
      String startTimeUTC,
      String venueUTCOffset,
      String gameState,
      VenueApiModel venue,
      TeamApiModel awayTeam,
      TeamApiModel homeTeam});

  $VenueApiModelCopyWith<$Res> get venue;
  $TeamApiModelCopyWith<$Res> get awayTeam;
  $TeamApiModelCopyWith<$Res> get homeTeam;
}

/// @nodoc
class _$GameApiModelCopyWithImpl<$Res, $Val extends GameApiModel>
    implements $GameApiModelCopyWith<$Res> {
  _$GameApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? season = null,
    Object? gameType = null,
    Object? gameDate = null,
    Object? startTimeUTC = null,
    Object? venueUTCOffset = null,
    Object? gameState = null,
    Object? venue = null,
    Object? awayTeam = null,
    Object? homeTeam = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as int,
      gameDate: null == gameDate
          ? _value.gameDate
          : gameDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTimeUTC: null == startTimeUTC
          ? _value.startTimeUTC
          : startTimeUTC // ignore: cast_nullable_to_non_nullable
              as String,
      venueUTCOffset: null == venueUTCOffset
          ? _value.venueUTCOffset
          : venueUTCOffset // ignore: cast_nullable_to_non_nullable
              as String,
      gameState: null == gameState
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as String,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as VenueApiModel,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as TeamApiModel,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as TeamApiModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VenueApiModelCopyWith<$Res> get venue {
    return $VenueApiModelCopyWith<$Res>(_value.venue, (value) {
      return _then(_value.copyWith(venue: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamApiModelCopyWith<$Res> get awayTeam {
    return $TeamApiModelCopyWith<$Res>(_value.awayTeam, (value) {
      return _then(_value.copyWith(awayTeam: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamApiModelCopyWith<$Res> get homeTeam {
    return $TeamApiModelCopyWith<$Res>(_value.homeTeam, (value) {
      return _then(_value.copyWith(homeTeam: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameApiModelImplCopyWith<$Res>
    implements $GameApiModelCopyWith<$Res> {
  factory _$$GameApiModelImplCopyWith(
          _$GameApiModelImpl value, $Res Function(_$GameApiModelImpl) then) =
      __$$GameApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int season,
      int gameType,
      String gameDate,
      String startTimeUTC,
      String venueUTCOffset,
      String gameState,
      VenueApiModel venue,
      TeamApiModel awayTeam,
      TeamApiModel homeTeam});

  @override
  $VenueApiModelCopyWith<$Res> get venue;
  @override
  $TeamApiModelCopyWith<$Res> get awayTeam;
  @override
  $TeamApiModelCopyWith<$Res> get homeTeam;
}

/// @nodoc
class __$$GameApiModelImplCopyWithImpl<$Res>
    extends _$GameApiModelCopyWithImpl<$Res, _$GameApiModelImpl>
    implements _$$GameApiModelImplCopyWith<$Res> {
  __$$GameApiModelImplCopyWithImpl(
      _$GameApiModelImpl _value, $Res Function(_$GameApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? season = null,
    Object? gameType = null,
    Object? gameDate = null,
    Object? startTimeUTC = null,
    Object? venueUTCOffset = null,
    Object? gameState = null,
    Object? venue = null,
    Object? awayTeam = null,
    Object? homeTeam = null,
  }) {
    return _then(_$GameApiModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as int,
      gameDate: null == gameDate
          ? _value.gameDate
          : gameDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTimeUTC: null == startTimeUTC
          ? _value.startTimeUTC
          : startTimeUTC // ignore: cast_nullable_to_non_nullable
              as String,
      venueUTCOffset: null == venueUTCOffset
          ? _value.venueUTCOffset
          : venueUTCOffset // ignore: cast_nullable_to_non_nullable
              as String,
      gameState: null == gameState
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as String,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as VenueApiModel,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as TeamApiModel,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as TeamApiModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameApiModelImpl extends _GameApiModel {
  const _$GameApiModelImpl(
      {required this.id,
      required this.season,
      required this.gameType,
      required this.gameDate,
      required this.startTimeUTC,
      required this.venueUTCOffset,
      required this.gameState,
      required this.venue,
      required this.awayTeam,
      required this.homeTeam})
      : super._();

  factory _$GameApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameApiModelImplFromJson(json);

  @override
  final int id;
  @override
  final int season;
  @override
  final int gameType;
  @override
  final String gameDate;
  @override
  final String startTimeUTC;
  @override
  final String venueUTCOffset;
  @override
  final String gameState;
  @override
  final VenueApiModel venue;
  @override
  final TeamApiModel awayTeam;
  @override
  final TeamApiModel homeTeam;

  @override
  String toString() {
    return 'GameApiModel(id: $id, season: $season, gameType: $gameType, gameDate: $gameDate, startTimeUTC: $startTimeUTC, venueUTCOffset: $venueUTCOffset, gameState: $gameState, venue: $venue, awayTeam: $awayTeam, homeTeam: $homeTeam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameApiModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.gameDate, gameDate) ||
                other.gameDate == gameDate) &&
            (identical(other.startTimeUTC, startTimeUTC) ||
                other.startTimeUTC == startTimeUTC) &&
            (identical(other.venueUTCOffset, venueUTCOffset) ||
                other.venueUTCOffset == venueUTCOffset) &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState) &&
            (identical(other.venue, venue) || other.venue == venue) &&
            (identical(other.awayTeam, awayTeam) ||
                other.awayTeam == awayTeam) &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, season, gameType, gameDate,
      startTimeUTC, venueUTCOffset, gameState, venue, awayTeam, homeTeam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameApiModelImplCopyWith<_$GameApiModelImpl> get copyWith =>
      __$$GameApiModelImplCopyWithImpl<_$GameApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameApiModelImplToJson(
      this,
    );
  }
}

abstract class _GameApiModel extends GameApiModel {
  const factory _GameApiModel(
      {required final int id,
      required final int season,
      required final int gameType,
      required final String gameDate,
      required final String startTimeUTC,
      required final String venueUTCOffset,
      required final String gameState,
      required final VenueApiModel venue,
      required final TeamApiModel awayTeam,
      required final TeamApiModel homeTeam}) = _$GameApiModelImpl;
  const _GameApiModel._() : super._();

  factory _GameApiModel.fromJson(Map<String, dynamic> json) =
      _$GameApiModelImpl.fromJson;

  @override
  int get id;
  @override
  int get season;
  @override
  int get gameType;
  @override
  String get gameDate;
  @override
  String get startTimeUTC;
  @override
  String get venueUTCOffset;
  @override
  String get gameState;
  @override
  VenueApiModel get venue;
  @override
  TeamApiModel get awayTeam;
  @override
  TeamApiModel get homeTeam;
  @override
  @JsonKey(ignore: true)
  _$$GameApiModelImplCopyWith<_$GameApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
