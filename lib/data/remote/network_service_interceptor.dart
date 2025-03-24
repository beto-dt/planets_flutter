import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planets_flutter/common/dtos/refresh_token_response.dart';
import 'package:planets_flutter/common/http_status/status_code.dart';
import 'package:planets_flutter/data/local/secure_storage/isecure_storage.dart';
import 'package:planets_flutter/data/local/secure_storage/secure_storage.dart';
import 'package:planets_flutter/data/local/secure_storage/secure_storage_const.dart';


final networkServiceInterceptorProvider = Provider.family<NetworkServiceInterceptor, Dio>((ref, dio) {
  final secureStorage = ref.watch(secureStorageProvider);
  return NetworkServiceInterceptor(secureStorage, dio);
});

final class NetworkServiceInterceptor extends Interceptor {
  final ISecureStorage _secureStorage;
  final Dio _dio;

  NetworkServiceInterceptor(this._secureStorage, this._dio);

  void onRequest(RequestOptions options,
      RequestInterceptorHandler handler) async {
    final accesToken = await _secureStorage.read(accessTokenKey);
    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';
    options.headers['Authorization'] = 'Bearer $accesToken';

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler)  async {
    if(err.response?.statusCode == unauthorized  ) {
      final token = await _secureStorage.read(accessTokenKey);

      try {
          final response = await _refreshToken(_dio, token);
          final json = response.data;
          final result = RefreshTokenResponse.fromJson(json ?? {});
          final statusCode = response.statusCode;

          if(statusCode == success ) {
            final accesToken = result.data.accessToken;
            final refreshToken = result.data.refreshToken;

            await _storeAccessToken(accesToken,refreshToken);


            final options = err.requestOptions;
            options.headers['Authorization'] = 'Bearer $accesToken';
            return handler.resolve(await _dio.fetch(options));
          }
      } on DioException catch(e){
          if(e.response?.statusCode == refreshTokenExpired){
            await _clearAccessToken();
            err.response?.statusCode = refreshTokenExpired;

            return handler.next(err);
          }

          return handler.next(err);
      }
    }
    return handler.next(err);
  }

  Future<void> _clearAccessToken() async {
    await _secureStorage.delete(accessTokenKey);
    await _secureStorage.delete(refreshTokenKey);
  }

  Future<void> _storeAccessToken(String accesToken, String refreshToken) async {
    await _secureStorage.write(accessTokenKey, accesToken);
    await _secureStorage.write(refreshTokenKey, refreshToken);
  }

  Future<Response<Map<String, dynamic>>> _refreshToken(Dio dio, String? token) async {
    return await _dio.post<Map<String, dynamic>>(
      '/api/v1/auth/refresh-token',
      data: {
        "refreshToken": token
      }
    );
  }
}
