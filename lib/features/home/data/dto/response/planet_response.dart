import 'package:freezed_annotation/freezed_annotation.dart';

part 'planet_response.freezed.dart';
part 'planet_response.g.dart';

@freezed
abstract class PlanetResponse with _$PlanetResponse {
  const factory PlanetResponse({
    @JsonKey(name: "msg") required String message,
    @JsonKey(name: "data") required List<Planet> data,
  }) = _PlanetResponse;

  factory PlanetResponse.fromJson(Map<String, dynamic> json) =>
      _$PlanetResponseFromJson(json);
}



@freezed
abstract class Planet with _$Planet {
  const factory Planet({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "description") required String description,
  }) = _Planet;

  factory Planet.fromJson(Map<String, dynamic> json) => _$PlanetFromJson(json);
}

