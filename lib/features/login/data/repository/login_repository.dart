import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planets_flutter/common/exception/failure.dart';
import 'package:planets_flutter/common/extension/string_hardcoded.dart';
import 'package:planets_flutter/common/mixin/dio_exception_mapper.dart';
import 'package:planets_flutter/features/login/data/dto/request/login_request.dart';
import 'package:planets_flutter/features/login/data/dto/response/login_response.dart';
import 'package:planets_flutter/features/login/data/repository/ilogin_repository.dart';
import 'package:planets_flutter/features/login/data/source/local/itoken_storage.dart';
import 'package:planets_flutter/features/login/data/source/local/token_storage.dart';
import 'package:planets_flutter/features/login/data/source/remote/login_api.dart';

final loginRepositoryProvider = Provider.autoDispose<ILoginRepository>((ref) {
  final loginApi = ref.watch(loginApiProvider);
  final tokenStorage = ref.watch(tokenStorageProvider);

  return LoginRepository(loginApi, tokenStorage);
});

final class LoginRepository
    with DioExceptionMapper
    implements ILoginRepository {
  final LoginApi _loginApi;
  final ITokenStorage _tokenStorage;

  LoginRepository(this._loginApi, this._tokenStorage);

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    try {
      final response = await _loginApi.login(loginRequest);
      final accessToken = response.data.accessToken;
      final refreshToken = response.data.refreshToken;
      await _tokenStorage.storeToken(accessToken, refreshToken);

      return response;
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message:
        "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }
}
