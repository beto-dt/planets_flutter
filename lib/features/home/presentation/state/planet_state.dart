import 'package:freezed_annotation/freezed_annotation.dart';
part 'planet_state.freezed.dart';

@freezed
abstract class PlanetState with _$PlanetState {
  factory PlanetState(
      {@Default(false) bool isLoading,
        @Default(false) bool isLoginSuccess,
        String? error,
        @Default([]) List<dynamic> planets}) = _PlanetState;
}
