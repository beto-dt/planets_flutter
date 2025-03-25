// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpRequest {
  @JsonKey(name: "name")
  String get name;
  @JsonKey(name: "email")
  String get email;
  @JsonKey(name: "password")
  String get password;
  @JsonKey(name: "passwordConfirm")
  String get passwordConfirm;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpRequestCopyWith<SignUpRequest> get copyWith =>
      _$SignUpRequestCopyWithImpl<SignUpRequest>(
          this as SignUpRequest, _$identity);

  /// Serializes this SignUpRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, passwordConfirm);

  @override
  String toString() {
    return 'SignUpRequest(name: $name, email: $email, password: $password, passwordConfirm: $passwordConfirm)';
  }
}

/// @nodoc
abstract mixin class $SignUpRequestCopyWith<$Res> {
  factory $SignUpRequestCopyWith(
          SignUpRequest value, $Res Function(SignUpRequest) _then) =
      _$SignUpRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "passwordConfirm") String passwordConfirm});
}

/// @nodoc
class _$SignUpRequestCopyWithImpl<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  _$SignUpRequestCopyWithImpl(this._self, this._then);

  final SignUpRequest _self;
  final $Res Function(SignUpRequest) _then;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirm = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _self.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SignUpRequest implements SignUpRequest {
  const _SignUpRequest(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "password") required this.password,
      @JsonKey(name: "passwordConfirm") required this.passwordConfirm});
  factory _SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "password")
  final String password;
  @override
  @JsonKey(name: "passwordConfirm")
  final String passwordConfirm;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignUpRequestCopyWith<_SignUpRequest> get copyWith =>
      __$SignUpRequestCopyWithImpl<_SignUpRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignUpRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, passwordConfirm);

  @override
  String toString() {
    return 'SignUpRequest(name: $name, email: $email, password: $password, passwordConfirm: $passwordConfirm)';
  }
}

/// @nodoc
abstract mixin class _$SignUpRequestCopyWith<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  factory _$SignUpRequestCopyWith(
          _SignUpRequest value, $Res Function(_SignUpRequest) _then) =
      __$SignUpRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "passwordConfirm") String passwordConfirm});
}

/// @nodoc
class __$SignUpRequestCopyWithImpl<$Res>
    implements _$SignUpRequestCopyWith<$Res> {
  __$SignUpRequestCopyWithImpl(this._self, this._then);

  final _SignUpRequest _self;
  final $Res Function(_SignUpRequest) _then;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirm = null,
  }) {
    return _then(_SignUpRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _self.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
