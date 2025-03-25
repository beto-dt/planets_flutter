import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planets_flutter/features/home/application/planet_service.dart';
import 'package:planets_flutter/features/home/presentation/state/planet_state.dart';

final planetControllerProvider =
    AutoDisposeNotifierProvider<PlanetController, PlanetState>(
        PlanetController.new);

class PlanetController extends AutoDisposeNotifier<PlanetState> {
  @override
  PlanetState build() {
    return PlanetState();
  }

  Future<void> planets() async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      final result = await ref.read(planetServiceProvider).planets();
      result.when((succes) {
        state = state.copyWith(isLoading: false, planets: succes.data);
      }, (failure) {
        state = state.copyWith(isLoading: false, error: failure.message);
      });
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}
