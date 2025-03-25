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
    @JsonKey(name: "orbital_distance_km") required int orbitalDistanceKm,
    @JsonKey(name: "equatorial_radius_km") required int equatorialRadiusKm,
    @JsonKey(name: "volume_km3") required int volumeKm3,
    @JsonKey(name: "mass_kg") required String massKg,
    @JsonKey(name: "density_g_cm3") required double densityGCm3,
    @JsonKey(name: "surface_gravity_m_s2") required double surfaceGravityMs2,
    @JsonKey(name: "escape_velocity_kmh") required int escapeVelocityKmh,
    @JsonKey(name: "day_length_earth_days") required double dayLengthEarthDays,
    @JsonKey(name: "year_length_earth_days") required double yearLengthEarthDays,
    @JsonKey(name: "orbital_speed_kmh") required int orbitalSpeedKmh,
    @JsonKey(name: "atmosphere_composition") required String atmosphereComposition,
    @JsonKey(name: "moons") required int moons,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "description") required String description,
  }) = _Planet;

  factory Planet.fromJson(Map<String, dynamic> json) => _$PlanetFromJson(json);
}

