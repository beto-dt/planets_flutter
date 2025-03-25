import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planets_flutter/common/exception/failure.dart';
import 'package:planets_flutter/features/home/application/iplanet_service.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:planets_flutter/features/home/data/dto/response/planet_response.dart';
import 'package:planets_flutter/features/home/data/repository/iplanet_repository.dart';
import 'package:planets_flutter/features/home/data/repository/planet_repository.dart';

final planetServiceProvider = Provider.autoDispose<IPlanetService>((ref) {
  final planetRepository = ref.watch(planetRepositoryProvider);

  return PlanetService(planetRepository);
});

final class PlanetService implements IPlanetService {
  final IPlanetRepository _planetRepository;

  PlanetService(this._planetRepository);

  @override
  Future<Result<PlanetResponse, Failure>> planets() async {
    try {
      final response = await _planetRepository.planets();
      return Success(response);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(Failure(
        message: e.toString(),
        exception: e as Exception,
        stackTrace: s,
      ));
    }
  }
}
