// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotPasswordState {
  bool get isLoading;
  bool? get isEmailSent;
  String? get error;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      _$ForgotPasswordStateCopyWithImpl<ForgotPasswordState>(
          this as ForgotPasswordState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPasswordState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isEmailSent, isEmailSent) ||
                other.isEmailSent == isEmailSent) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isEmailSent, error);

  @override
  String toString() {
    return 'ForgotPasswordState(isLoading: $isLoading, isEmailSent: $isEmailSent, error: $error)';
  }
}

/// @nodoc
abstract mixin class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) _then) =
      _$ForgotPasswordStateCopyWithImpl;
  @useResult
  $Res call({bool isLoading, bool? isEmailSent, String? error});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final ForgotPasswordState _self;
  final $Res Function(ForgotPasswordState) _then;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isEmailSent = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailSent: freezed == isEmailSent
          ? _self.isEmailSent
          : isEmailSent // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _ForgotPasswordState implements ForgotPasswordState {
  _ForgotPasswordState({this.isLoading = false, this.isEmailSent, this.error});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final bool? isEmailSent;
  @override
  final String? error;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      __$ForgotPasswordStateCopyWithImpl<_ForgotPasswordState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotPasswordState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isEmailSent, isEmailSent) ||
                other.isEmailSent == isEmailSent) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isEmailSent, error);

  @override
  String toString() {
    return 'ForgotPasswordState(isLoading: $isLoading, isEmailSent: $isEmailSent, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$ForgotPasswordStateCopyWith(_ForgotPasswordState value,
          $Res Function(_ForgotPasswordState) _then) =
      __$ForgotPasswordStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool isLoading, bool? isEmailSent, String? error});
}

/// @nodoc
class __$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$ForgotPasswordStateCopyWith<$Res> {
  __$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final _ForgotPasswordState _self;
  final $Res Function(_ForgotPasswordState) _then;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? isEmailSent = freezed,
    Object? error = freezed,
  }) {
    return _then(_ForgotPasswordState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailSent: freezed == isEmailSent
          ? _self.isEmailSent
          : isEmailSent // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
