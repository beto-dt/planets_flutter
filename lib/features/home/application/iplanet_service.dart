import 'package:multiple_result/multiple_result.dart';
import 'package:planets_flutter/common/exception/failure.dart';
import 'package:planets_flutter/features/home/data/dto/response/planet_response.dart';

abstract interface class IPlanetService {
  Future<Result<PlanetResponse, Failure>> planets();
}
