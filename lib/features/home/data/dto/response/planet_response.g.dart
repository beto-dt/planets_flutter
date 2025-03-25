// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlanetResponse _$PlanetResponseFromJson(Map<String, dynamic> json) =>
    _PlanetResponse(
      message: json['msg'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Planet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlanetResponseToJson(_PlanetResponse instance) =>
    <String, dynamic>{
      'msg': instance.message,
      'data': instance.data,
    };

_Planet _$PlanetFromJson(Map<String, dynamic> json) => _Planet(
      name: json['name'] as String,
      orbitalDistanceKm: (json['orbital_distance_km'] as num).toInt(),
      equatorialRadiusKm: (json['equatorial_radius_km'] as num).toInt(),
      volumeKm3: (json['volume_km3'] as num).toInt(),
      massKg: json['mass_kg'] as String,
      densityGCm3: (json['density_g_cm3'] as num).toDouble(),
      surfaceGravityMs2: (json['surface_gravity_m_s2'] as num).toDouble(),
      escapeVelocityKmh: (json['escape_velocity_kmh'] as num).toInt(),
      dayLengthEarthDays: (json['day_length_earth_days'] as num).toDouble(),
      yearLengthEarthDays: (json['year_length_earth_days'] as num).toDouble(),
      orbitalSpeedKmh: (json['orbital_speed_kmh'] as num).toInt(),
      atmosphereComposition: json['atmosphere_composition'] as String,
      moons: (json['moons'] as num).toInt(),
      image: json['image'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$PlanetToJson(_Planet instance) => <String, dynamic>{
      'name': instance.name,
      'orbital_distance_km': instance.orbitalDistanceKm,
      'equatorial_radius_km': instance.equatorialRadiusKm,
      'volume_km3': instance.volumeKm3,
      'mass_kg': instance.massKg,
      'density_g_cm3': instance.densityGCm3,
      'surface_gravity_m_s2': instance.surfaceGravityMs2,
      'escape_velocity_kmh': instance.escapeVelocityKmh,
      'day_length_earth_days': instance.dayLengthEarthDays,
      'year_length_earth_days': instance.yearLengthEarthDays,
      'orbital_speed_kmh': instance.orbitalSpeedKmh,
      'atmosphere_composition': instance.atmosphereComposition,
      'moons': instance.moons,
      'image': instance.image,
      'description': instance.description,
    };
