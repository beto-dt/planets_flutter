import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planets_flutter/core/provider/auth_state_provider.dart';
import 'package:planets_flutter/features/login/application/login_service.dart';
import 'package:planets_flutter/features/login/data/dto/request/login_request.dart';
import 'package:planets_flutter/features/login/presentation/state/login_state.dart';

final loginControllerProvider =
AutoDisposeNotifierProvider<LoginController, LoginState>(
    LoginController.new);

class LoginController extends AutoDisposeNotifier<LoginState> {
  @override
  LoginState build() {
    return LoginState();
  }
  Future<void> login() async {
    try {
      state = state.copyWith(isLoading: true, error: null);

      final loginRequest = LoginRequest(
        email: state.loginForm['email'],
        password: state.loginForm['password'],
      );

      final result = await ref.read(loginServiceProvider).login(loginRequest);
      result.when((succes) {
        ref.invalidate(authStateProvider);
        ref.read(authStateProvider.notifier).setAuthState(succes);

        state = state.copyWith(isLoading: false, isLoginSuccess: succes);
      }, (failure) {
        state = state.copyWith(isLoading: false, error: failure.message);
      });
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void setFormData(Map<String, dynamic> formData) {
    state = state.copyWith(loginForm: formData);
  }
}
