// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'venue_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VenueApiModel _$VenueApiModelFromJson(Map<String, dynamic> json) {
  return _VenueApiModel.fromJson(json);
}

/// @nodoc
mixin _$VenueApiModel {
  @JsonKey(name: 'default')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VenueApiModelCopyWith<VenueApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenueApiModelCopyWith<$Res> {
  factory $VenueApiModelCopyWith(
          VenueApiModel value, $Res Function(VenueApiModel) then) =
      _$VenueApiModelCopyWithImpl<$Res, VenueApiModel>;
  @useResult
  $Res call({@JsonKey(name: 'default') String name});
}

/// @nodoc
class _$VenueApiModelCopyWithImpl<$Res, $Val extends VenueApiModel>
    implements $VenueApiModelCopyWith<$Res> {
  _$VenueApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VenueApiModelImplCopyWith<$Res>
    implements $VenueApiModelCopyWith<$Res> {
  factory _$$VenueApiModelImplCopyWith(
          _$VenueApiModelImpl value, $Res Function(_$VenueApiModelImpl) then) =
      __$$VenueApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'default') String name});
}

/// @nodoc
class __$$VenueApiModelImplCopyWithImpl<$Res>
    extends _$VenueApiModelCopyWithImpl<$Res, _$VenueApiModelImpl>
    implements _$$VenueApiModelImplCopyWith<$Res> {
  __$$VenueApiModelImplCopyWithImpl(
      _$VenueApiModelImpl _value, $Res Function(_$VenueApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$VenueApiModelImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VenueApiModelImpl extends _VenueApiModel {
  const _$VenueApiModelImpl(@JsonKey(name: 'default') this.name) : super._();

  factory _$VenueApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VenueApiModelImplFromJson(json);

  @override
  @JsonKey(name: 'default')
  final String name;

  @override
  String toString() {
    return 'VenueApiModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VenueApiModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VenueApiModelImplCopyWith<_$VenueApiModelImpl> get copyWith =>
      __$$VenueApiModelImplCopyWithImpl<_$VenueApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VenueApiModelImplToJson(
      this,
    );
  }
}

abstract class _VenueApiModel extends VenueApiModel {
  const factory _VenueApiModel(@JsonKey(name: 'default') final String name) =
      _$VenueApiModelImpl;
  const _VenueApiModel._() : super._();

  factory _VenueApiModel.fromJson(Map<String, dynamic> json) =
      _$VenueApiModelImpl.fromJson;

  @override
  @JsonKey(name: 'default')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$VenueApiModelImplCopyWith<_$VenueApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
