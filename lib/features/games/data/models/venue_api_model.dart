// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'venue_api_model.freezed.dart';
part 'venue_api_model.g.dart';

@freezed
class VenueApiModel with _$VenueApiModel {
  const VenueApiModel._();
  const factory VenueApiModel(
    @JsonKey(name: 'default') String name,
  ) = _VenueApiModel;

  factory VenueApiModel.fromJson(Map<String, Object?> json) =>
      _$VenueApiModelFromJson(json);
}
