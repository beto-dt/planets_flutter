import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planets_flutter/core/data/remote/endpoint.dart';
import 'package:planets_flutter/core/data/remote/network_service.dart';
import 'package:planets_flutter/features/home/data/dto/response/planet_response.dart';
import 'package:retrofit/retrofit.dart';

part 'planet_api.g.dart';

final planetApiProvider = Provider.autoDispose<PlanetApi>((ref) {
  final dio = ref.watch(networkServicePlanetsProvider);

  return PlanetApi(dio);
});

@RestApi()
abstract class PlanetApi {
  factory PlanetApi(Dio dio) => _PlanetApi(dio);

  @POST(planetsEndPoint)
  Future<PlanetResponse> planets();
}
