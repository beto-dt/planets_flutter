import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planets_flutter/features/signup/domain/model/sign_up_model.dart';

part 'sign_up_state.freezed.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  factory SignUpState({
    SignUpModel? signUpModel,
    bool? isSignUpSuccess,
    @Default(false) bool isLoading,
    String? error,
    @Default({}) Map<String, dynamic> signUpform,
  }) = _SignUpState;
}
