// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamApiModel _$TeamApiModelFromJson(Map<String, dynamic> json) {
  return _TeamApiModel.fromJson(json);
}

/// @nodoc
mixin _$TeamApiModel {
  int get id => throw _privateConstructorUsedError;
  String get abbrev => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get darkLogo => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamApiModelCopyWith<TeamApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamApiModelCopyWith<$Res> {
  factory $TeamApiModelCopyWith(
          TeamApiModel value, $Res Function(TeamApiModel) then) =
      _$TeamApiModelCopyWithImpl<$Res, TeamApiModel>;
  @useResult
  $Res call({int id, String abbrev, String logo, String darkLogo, int? score});
}

/// @nodoc
class _$TeamApiModelCopyWithImpl<$Res, $Val extends TeamApiModel>
    implements $TeamApiModelCopyWith<$Res> {
  _$TeamApiModelCopyWithImpl(this._value, this._then);

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
abstract class _$$TeamApiModelImplCopyWith<$Res>
    implements $TeamApiModelCopyWith<$Res> {
  factory _$$TeamApiModelImplCopyWith(
          _$TeamApiModelImpl value, $Res Function(_$TeamApiModelImpl) then) =
      __$$TeamApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String abbrev, String logo, String darkLogo, int? score});
}

/// @nodoc
class __$$TeamApiModelImplCopyWithImpl<$Res>
    extends _$TeamApiModelCopyWithImpl<$Res, _$TeamApiModelImpl>
    implements _$$TeamApiModelImplCopyWith<$Res> {
  __$$TeamApiModelImplCopyWithImpl(
      _$TeamApiModelImpl _value, $Res Function(_$TeamApiModelImpl) _then)
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
    return _then(_$TeamApiModelImpl(
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
@JsonSerializable()
class _$TeamApiModelImpl extends _TeamApiModel {
  const _$TeamApiModelImpl(
      {required this.id,
      required this.abbrev,
      required this.logo,
      required this.darkLogo,
      this.score})
      : super._();

  factory _$TeamApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamApiModelImplFromJson(json);

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
    return 'TeamApiModel(id: $id, abbrev: $abbrev, logo: $logo, darkLogo: $darkLogo, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamApiModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.abbrev, abbrev) || other.abbrev == abbrev) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.darkLogo, darkLogo) ||
                other.darkLogo == darkLogo) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, abbrev, logo, darkLogo, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamApiModelImplCopyWith<_$TeamApiModelImpl> get copyWith =>
      __$$TeamApiModelImplCopyWithImpl<_$TeamApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamApiModelImplToJson(
      this,
    );
  }
}

abstract class _TeamApiModel extends TeamApiModel {
  const factory _TeamApiModel(
      {required final int id,
      required final String abbrev,
      required final String logo,
      required final String darkLogo,
      final int? score}) = _$TeamApiModelImpl;
  const _TeamApiModel._() : super._();

  factory _TeamApiModel.fromJson(Map<String, dynamic> json) =
      _$TeamApiModelImpl.fromJson;

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
  _$$TeamApiModelImplCopyWith<_$TeamApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
