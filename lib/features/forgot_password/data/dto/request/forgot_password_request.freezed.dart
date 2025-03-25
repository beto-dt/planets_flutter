// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotPasswordRequest {
  @JsonKey(name: "email")
  String get email;

  /// Create a copy of ForgotPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForgotPasswordRequestCopyWith<ForgotPasswordRequest> get copyWith =>
      _$ForgotPasswordRequestCopyWithImpl<ForgotPasswordRequest>(
          this as ForgotPasswordRequest, _$identity);

  /// Serializes this ForgotPasswordRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPasswordRequest &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'ForgotPasswordRequest(email: $email)';
  }
}

/// @nodoc
abstract mixin class $ForgotPasswordRequestCopyWith<$Res> {
  factory $ForgotPasswordRequestCopyWith(ForgotPasswordRequest value,
          $Res Function(ForgotPasswordRequest) _then) =
      _$ForgotPasswordRequestCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: "email") String email});
}

/// @nodoc
class _$ForgotPasswordRequestCopyWithImpl<$Res>
    implements $ForgotPasswordRequestCopyWith<$Res> {
  _$ForgotPasswordRequestCopyWithImpl(this._self, this._then);

  final ForgotPasswordRequest _self;
  final $Res Function(ForgotPasswordRequest) _then;

  /// Create a copy of ForgotPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ForgotPasswordRequest implements ForgotPasswordRequest {
  const _ForgotPasswordRequest({@JsonKey(name: "email") required this.email});
  factory _ForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordRequestFromJson(json);

  @override
  @JsonKey(name: "email")
  final String email;

  /// Create a copy of ForgotPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForgotPasswordRequestCopyWith<_ForgotPasswordRequest> get copyWith =>
      __$ForgotPasswordRequestCopyWithImpl<_ForgotPasswordRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ForgotPasswordRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotPasswordRequest &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'ForgotPasswordRequest(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$ForgotPasswordRequestCopyWith<$Res>
    implements $ForgotPasswordRequestCopyWith<$Res> {
  factory _$ForgotPasswordRequestCopyWith(_ForgotPasswordRequest value,
          $Res Function(_ForgotPasswordRequest) _then) =
      __$ForgotPasswordRequestCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: "email") String email});
}

/// @nodoc
class __$ForgotPasswordRequestCopyWithImpl<$Res>
    implements _$ForgotPasswordRequestCopyWith<$Res> {
  __$ForgotPasswordRequestCopyWithImpl(this._self, this._then);

  final _ForgotPasswordRequest _self;
  final $Res Function(_ForgotPasswordRequest) _then;

  /// Create a copy of ForgotPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_ForgotPasswordRequest(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
