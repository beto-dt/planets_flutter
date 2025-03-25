import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planets_flutter/common/exception/failure.dart';
import 'package:planets_flutter/common/extension/string_hardcoded.dart';
import 'package:planets_flutter/common/mixin/dio_exception_mapper.dart';
import 'package:planets_flutter/features/home/data/dto/response/planet_response.dart';
import 'package:planets_flutter/features/home/data/repository/iplanet_repository.dart';
import 'package:planets_flutter/features/home/data/source/remote/planet_api.dart';

final planetRepositoryProvider = Provider.autoDispose<IPlanetRepository>((ref) {
  final planetApi = ref.watch(planetApiProvider);

  return PlanetRepository(planetApi);
});

final class PlanetRepository
    with DioExceptionMapper
    implements IPlanetRepository {
  final PlanetApi _planetApi;

  PlanetRepository(this._planetApi);

  @override
  Future<PlanetResponse> planets() async {
    try {
      final response = await _planetApi.planets();
      return response;
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message:
        "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }
}
