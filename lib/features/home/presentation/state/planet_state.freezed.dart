// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'planet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlanetState {
  bool get isLoading;
  bool get isLoginSuccess;
  String? get error;
  List<dynamic> get planets;

  /// Create a copy of PlanetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlanetStateCopyWith<PlanetState> get copyWith =>
      _$PlanetStateCopyWithImpl<PlanetState>(this as PlanetState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlanetState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoginSuccess, isLoginSuccess) ||
                other.isLoginSuccess == isLoginSuccess) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.planets, planets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isLoginSuccess, error,
      const DeepCollectionEquality().hash(planets));

  @override
  String toString() {
    return 'PlanetState(isLoading: $isLoading, isLoginSuccess: $isLoginSuccess, error: $error, planets: $planets)';
  }
}

/// @nodoc
abstract mixin class $PlanetStateCopyWith<$Res> {
  factory $PlanetStateCopyWith(
          PlanetState value, $Res Function(PlanetState) _then) =
      _$PlanetStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoginSuccess,
      String? error,
      List<dynamic> planets});
}

/// @nodoc
class _$PlanetStateCopyWithImpl<$Res> implements $PlanetStateCopyWith<$Res> {
  _$PlanetStateCopyWithImpl(this._self, this._then);

  final PlanetState _self;
  final $Res Function(PlanetState) _then;

  /// Create a copy of PlanetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoginSuccess = null,
    Object? error = freezed,
    Object? planets = null,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginSuccess: null == isLoginSuccess
          ? _self.isLoginSuccess
          : isLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      planets: null == planets
          ? _self.planets
          : planets // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _PlanetState implements PlanetState {
  _PlanetState(
      {this.isLoading = false,
      this.isLoginSuccess = false,
      this.error,
      final List<dynamic> planets = const []})
      : _planets = planets;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoginSuccess;
  @override
  final String? error;
  final List<dynamic> _planets;
  @override
  @JsonKey()
  List<dynamic> get planets {
    if (_planets is EqualUnmodifiableListView) return _planets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_planets);
  }

  /// Create a copy of PlanetState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlanetStateCopyWith<_PlanetState> get copyWith =>
      __$PlanetStateCopyWithImpl<_PlanetState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlanetState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoginSuccess, isLoginSuccess) ||
                other.isLoginSuccess == isLoginSuccess) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._planets, _planets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isLoginSuccess, error,
      const DeepCollectionEquality().hash(_planets));

  @override
  String toString() {
    return 'PlanetState(isLoading: $isLoading, isLoginSuccess: $isLoginSuccess, error: $error, planets: $planets)';
  }
}

/// @nodoc
abstract mixin class _$PlanetStateCopyWith<$Res>
    implements $PlanetStateCopyWith<$Res> {
  factory _$PlanetStateCopyWith(
          _PlanetState value, $Res Function(_PlanetState) _then) =
      __$PlanetStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoginSuccess,
      String? error,
      List<dynamic> planets});
}

/// @nodoc
class __$PlanetStateCopyWithImpl<$Res> implements _$PlanetStateCopyWith<$Res> {
  __$PlanetStateCopyWithImpl(this._self, this._then);

  final _PlanetState _self;
  final $Res Function(_PlanetState) _then;

  /// Create a copy of PlanetState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? isLoginSuccess = null,
    Object? error = freezed,
    Object? planets = null,
  }) {
    return _then(_PlanetState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginSuccess: null == isLoginSuccess
          ? _self.isLoginSuccess
          : isLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      planets: null == planets
          ? _self._planets
          : planets // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

// dart format on
