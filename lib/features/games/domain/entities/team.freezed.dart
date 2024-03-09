// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Team {
  int get id => throw _privateConstructorUsedError;
  String get abbrev => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get darkLogo => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call({int id, String abbrev, String logo, String darkLogo, int? score});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res, $Val extends Team>
    implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? abbrev = null,
    Object? logo = null,
    Object? darkLogo = null,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      abbrev: null == abbrev
          ? _value.abbrev
          : abbrev // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      darkLogo: null == darkLogo
          ? _value.darkLogo
          : darkLogo // ignore: cast_nullable_to_non_nullable
              as String,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamImplCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$TeamImplCopyWith(
          _$TeamImpl value, $Res Function(_$TeamImpl) then) =
      __$$TeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String abbrev, String logo, String darkLogo, int? score});
}

/// @nodoc
class __$$TeamImplCopyWithImpl<$Res>
    extends _$TeamCopyWithImpl<$Res, _$TeamImpl>
    implements _$$TeamImplCopyWith<$Res> {
  __$$TeamImplCopyWithImpl(_$TeamImpl _value, $Res Function(_$TeamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? abbrev = null,
    Object? logo = null,
    Object? darkLogo = null,
    Object? score = freezed,
  }) {
    return _then(_$TeamImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      abbrev: null == abbrev
          ? _value.abbrev
          : abbrev // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      darkLogo: null == darkLogo
          ? _value.darkLogo
          : darkLogo // ignore: cast_nullable_to_non_nullable
              as String,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TeamImpl extends _Team {
  const _$TeamImpl(
      {required this.id,
      required this.abbrev,
      required this.logo,
      required this.darkLogo,
      this.score})
      : super._();

  @override
  final int id;
  @override
  final String abbrev;
  @override
  final String logo;
  @override
  final String darkLogo;
  @override
  final int? score;

  @override
  String toString() {
    return 'Team(id: $id, abbrev: $abbrev, logo: $logo, darkLogo: $darkLogo, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.abbrev, abbrev) || other.abbrev == abbrev) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.darkLogo, darkLogo) ||
                other.darkLogo == darkLogo) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, abbrev, logo, darkLogo, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamImplCopyWith<_$TeamImpl> get copyWith =>
      __$$TeamImplCopyWithImpl<_$TeamImpl>(this, _$identity);
}

abstract class _Team extends Team {
  const factory _Team(
      {required final int id,
      required final String abbrev,
      required final String logo,
      required final String darkLogo,
      final int? score}) = _$TeamImpl;
  const _Team._() : super._();

  @override
  int get id;
  @override
  String get abbrev;
  @override
  String get logo;
  @override
  String get darkLogo;
  @override
  int? get score;
  @override
  @JsonKey(ignore: true)
  _$$TeamImplCopyWith<_$TeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
