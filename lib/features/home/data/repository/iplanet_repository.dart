import 'package:planets_flutter/features/home/data/dto/response/planet_response.dart';

abstract interface class IPlanetRepository {
  Future<PlanetResponse> planets();
}
