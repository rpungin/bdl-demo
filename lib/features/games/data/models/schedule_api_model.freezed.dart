// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleApiModel _$ScheduleApiModelFromJson(Map<String, dynamic> json) {
  return _ScheduleApiModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleApiModel {
  List<GameApiModel> get games => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleApiModelCopyWith<ScheduleApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleApiModelCopyWith<$Res> {
  factory $ScheduleApiModelCopyWith(
          ScheduleApiModel value, $Res Function(ScheduleApiModel) then) =
      _$ScheduleApiModelCopyWithImpl<$Res, ScheduleApiModel>;
  @useResult
  $Res call({List<GameApiModel> games});
}

/// @nodoc
class _$ScheduleApiModelCopyWithImpl<$Res, $Val extends ScheduleApiModel>
    implements $ScheduleApiModelCopyWith<$Res> {
  _$ScheduleApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
  }) {
    return _then(_value.copyWith(
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<GameApiModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleApiModelImplCopyWith<$Res>
    implements $ScheduleApiModelCopyWith<$Res> {
  factory _$$ScheduleApiModelImplCopyWith(_$ScheduleApiModelImpl value,
          $Res Function(_$ScheduleApiModelImpl) then) =
      __$$ScheduleApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GameApiModel> games});
}

/// @nodoc
class __$$ScheduleApiModelImplCopyWithImpl<$Res>
    extends _$ScheduleApiModelCopyWithImpl<$Res, _$ScheduleApiModelImpl>
    implements _$$ScheduleApiModelImplCopyWith<$Res> {
  __$$ScheduleApiModelImplCopyWithImpl(_$ScheduleApiModelImpl _value,
      $Res Function(_$ScheduleApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
  }) {
    return _then(_$ScheduleApiModelImpl(
      games: null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<GameApiModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleApiModelImpl extends _ScheduleApiModel {
  const _$ScheduleApiModelImpl({required final List<GameApiModel> games})
      : _games = games,
        super._();

  factory _$ScheduleApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleApiModelImplFromJson(json);

  final List<GameApiModel> _games;
  @override
  List<GameApiModel> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  String toString() {
    return 'ScheduleApiModel(games: $games)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleApiModelImpl &&
            const DeepCollectionEquality().equals(other._games, _games));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_games));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleApiModelImplCopyWith<_$ScheduleApiModelImpl> get copyWith =>
      __$$ScheduleApiModelImplCopyWithImpl<_$ScheduleApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleApiModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduleApiModel extends ScheduleApiModel {
  const factory _ScheduleApiModel({required final List<GameApiModel> games}) =
      _$ScheduleApiModelImpl;
  const _ScheduleApiModel._() : super._();

  factory _ScheduleApiModel.fromJson(Map<String, dynamic> json) =
      _$ScheduleApiModelImpl.fromJson;

  @override
  List<GameApiModel> get games;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleApiModelImplCopyWith<_$ScheduleApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
