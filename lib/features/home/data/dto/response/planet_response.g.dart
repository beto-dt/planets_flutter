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
      image: json['image'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$PlanetToJson(_Planet instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
    };
