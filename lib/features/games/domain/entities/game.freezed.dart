// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Game {
  int get id => throw _privateConstructorUsedError;
  int get season => throw _privateConstructorUsedError;
  int get gameType => throw _privateConstructorUsedError;
  String get dateString => throw _privateConstructorUsedError;
  String get startTimeUTC => throw _privateConstructorUsedError;
  String get venueUTCOffset => throw _privateConstructorUsedError;
  String get gameState => throw _privateConstructorUsedError;
  String get venueName => throw _privateConstructorUsedError;
  Team get awayTeam => throw _privateConstructorUsedError;
  Team get homeTeam => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {int id,
      int season,
      int gameType,
      String dateString,
      String startTimeUTC,
      String venueUTCOffset,
      String gameState,
      String venueName,
      Team awayTeam,
      Team homeTeam});

  $TeamCopyWith<$Res> get awayTeam;
  $TeamCopyWith<$Res> get homeTeam;
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

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
    Object? dateString = null,
    Object? startTimeUTC = null,
    Object? venueUTCOffset = null,
    Object? gameState = null,
    Object? venueName = null,
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
      dateString: null == dateString
          ? _value.dateString
          : dateString // ignore: cast_nullable_to_non_nullable
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
      venueName: null == venueName
          ? _value.venueName
          : venueName // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as Team,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get awayTeam {
    return $TeamCopyWith<$Res>(_value.awayTeam, (value) {
      return _then(_value.copyWith(awayTeam: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get homeTeam {
    return $TeamCopyWith<$Res>(_value.homeTeam, (value) {
      return _then(_value.copyWith(homeTeam: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int season,
      int gameType,
      String dateString,
      String startTimeUTC,
      String venueUTCOffset,
      String gameState,
      String venueName,
      Team awayTeam,
      Team homeTeam});

  @override
  $TeamCopyWith<$Res> get awayTeam;
  @override
  $TeamCopyWith<$Res> get homeTeam;
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? season = null,
    Object? gameType = null,
    Object? dateString = null,
    Object? startTimeUTC = null,
    Object? venueUTCOffset = null,
    Object? gameState = null,
    Object? venueName = null,
    Object? awayTeam = null,
    Object? homeTeam = null,
  }) {
    return _then(_$GameImpl(
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
      dateString: null == dateString
          ? _value.dateString
          : dateString // ignore: cast_nullable_to_non_nullable
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
      venueName: null == venueName
          ? _value.venueName
          : venueName // ignore: cast_nullable_to_non_nullable
              as String,
      awayTeam: null == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as Team,
      homeTeam: null == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as Team,
    ));
  }
}

/// @nodoc

class _$GameImpl extends _Game {
  const _$GameImpl(
      {required this.id,
      required this.season,
      required this.gameType,
      required this.dateString,
      required this.startTimeUTC,
      required this.venueUTCOffset,
      required this.gameState,
      required this.venueName,
      required this.awayTeam,
      required this.homeTeam})
      : super._();

  @override
  final int id;
  @override
  final int season;
  @override
  final int gameType;
  @override
  final String dateString;
  @override
  final String startTimeUTC;
  @override
  final String venueUTCOffset;
  @override
  final String gameState;
  @override
  final String venueName;
  @override
  final Team awayTeam;
  @override
  final Team homeTeam;

  @override
  String toString() {
    return 'Game(id: $id, season: $season, gameType: $gameType, dateString: $dateString, startTimeUTC: $startTimeUTC, venueUTCOffset: $venueUTCOffset, gameState: $gameState, venueName: $venueName, awayTeam: $awayTeam, homeTeam: $homeTeam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.dateString, dateString) ||
                other.dateString == dateString) &&
            (identical(other.startTimeUTC, startTimeUTC) ||
                other.startTimeUTC == startTimeUTC) &&
            (identical(other.venueUTCOffset, venueUTCOffset) ||
                other.venueUTCOffset == venueUTCOffset) &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState) &&
            (identical(other.venueName, venueName) ||
                other.venueName == venueName) &&
            (identical(other.awayTeam, awayTeam) ||
                other.awayTeam == awayTeam) &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, season, gameType, dateString,
      startTimeUTC, venueUTCOffset, gameState, venueName, awayTeam, homeTeam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);
}

abstract class _Game extends Game {
  const factory _Game(
      {required final int id,
      required final int season,
      required final int gameType,
      required final String dateString,
      required final String startTimeUTC,
      required final String venueUTCOffset,
      required final String gameState,
      required final String venueName,
      required final Team awayTeam,
      required final Team homeTeam}) = _$GameImpl;
  const _Game._() : super._();

  @override
  int get id;
  @override
  int get season;
  @override
  int get gameType;
  @override
  String get dateString;
  @override
  String get startTimeUTC;
  @override
  String get venueUTCOffset;
  @override
  String get gameState;
  @override
  String get venueName;
  @override
  Team get awayTeam;
  @override
  Team get homeTeam;
  @override
  @JsonKey(ignore: true)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
