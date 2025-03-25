// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpModel {
  String get email;
  String get name;
  bool get isSugnUpSuccess;

  /// Create a copy of SignUpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpModelCopyWith<SignUpModel> get copyWith =>
      _$SignUpModelCopyWithImpl<SignUpModel>(this as SignUpModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isSugnUpSuccess, isSugnUpSuccess) ||
                other.isSugnUpSuccess == isSugnUpSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, name, isSugnUpSuccess);

  @override
  String toString() {
    return 'SignUpModel(email: $email, name: $name, isSugnUpSuccess: $isSugnUpSuccess)';
  }
}

/// @nodoc
abstract mixin class $SignUpModelCopyWith<$Res> {
  factory $SignUpModelCopyWith(
          SignUpModel value, $Res Function(SignUpModel) _then) =
      _$SignUpModelCopyWithImpl;
  @useResult
  $Res call({String email, String name, bool isSugnUpSuccess});
}

/// @nodoc
class _$SignUpModelCopyWithImpl<$Res> implements $SignUpModelCopyWith<$Res> {
  _$SignUpModelCopyWithImpl(this._self, this._then);

  final SignUpModel _self;
  final $Res Function(SignUpModel) _then;

  /// Create a copy of SignUpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? isSugnUpSuccess = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSugnUpSuccess: null == isSugnUpSuccess
          ? _self.isSugnUpSuccess
          : isSugnUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _SignUpModel implements SignUpModel {
  _SignUpModel(
      {required this.email, required this.name, required this.isSugnUpSuccess});

  @override
  final String email;
  @override
  final String name;
  @override
  final bool isSugnUpSuccess;

  /// Create a copy of SignUpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignUpModelCopyWith<_SignUpModel> get copyWith =>
      __$SignUpModelCopyWithImpl<_SignUpModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isSugnUpSuccess, isSugnUpSuccess) ||
                other.isSugnUpSuccess == isSugnUpSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, name, isSugnUpSuccess);

  @override
  String toString() {
    return 'SignUpModel(email: $email, name: $name, isSugnUpSuccess: $isSugnUpSuccess)';
  }
}

/// @nodoc
abstract mixin class _$SignUpModelCopyWith<$Res>
    implements $SignUpModelCopyWith<$Res> {
  factory _$SignUpModelCopyWith(
          _SignUpModel value, $Res Function(_SignUpModel) _then) =
      __$SignUpModelCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String name, bool isSugnUpSuccess});
}

/// @nodoc
class __$SignUpModelCopyWithImpl<$Res> implements _$SignUpModelCopyWith<$Res> {
  __$SignUpModelCopyWithImpl(this._self, this._then);

  final _SignUpModel _self;
  final $Res Function(_SignUpModel) _then;

  /// Create a copy of SignUpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? isSugnUpSuccess = null,
  }) {
    return _then(_SignUpModel(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSugnUpSuccess: null == isSugnUpSuccess
          ? _self.isSugnUpSuccess
          : isSugnUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
