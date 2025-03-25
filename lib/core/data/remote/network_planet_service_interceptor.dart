import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planets_flutter/common/http_status/status_code.dart';
import 'package:planets_flutter/core/data/remote/endpoint.dart';
import 'package:planets_flutter/core/data/remote/token/itoken_service.dart';
import 'package:planets_flutter/core/data/remote/token/token_service.dart';

final networkPlanetServiceInterceptorProvider =
Provider.family<NetworkPlanetServiceInterceptor, Dio>((ref, dio) {
  final tokenService = ref.watch(tokenServiceProvider(dio));

  return NetworkPlanetServiceInterceptor(tokenService, dio);
});

final class NetworkPlanetServiceInterceptor extends Interceptor {
  final ITokenService _tokenService;
  final Dio _dio;

  NetworkPlanetServiceInterceptor(this._tokenService, this._dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    print('🚀 Iniciando request: ${options.path}');
    final accessToken = await _tokenService.getAccessToken();

    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';

    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    print('📤 Headers: ${options.headers}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('✅ Respuesta recibida:');
    print('Status: ${response.statusCode}');
    print('Data: ${response.data}');

    if (response.data is Map<String, dynamic>) {
      final responseData = response.data as Map<String, dynamic>;
      print('📝 Mensaje: ${responseData['msg']}');

      if (responseData['data'] != null) {
        print('📦 Datos: ${responseData['data']}');
        // Modificar la respuesta para que solo contenga los datos
        response.data = responseData['data'];
      }
    }

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    print('❌ Error en request: ${err.requestOptions.path}');
    print('Error tipo: ${err.type}');
    print('Error mensaje: ${err.message}');
    print('Error respuesta: ${err.response?.data}');

    if (err.response?.statusCode == unauthorized &&
        err.requestOptions.path != loginEndPoint) {
      print('🔄 Intentando refresh token');
      final token = await _tokenService.getRefreshToken();

      try {
        final result = await _tokenService.refreshToken(token);
        final accesToken = result.data.accessToken;
        final refreshToken = result.data.refreshToken;

        await _tokenService.saveToken(accesToken, refreshToken);
        print('✨ Token actualizado exitosamente');

        final options = err.requestOptions;
        options.headers['Authorization'] = 'Bearer $accesToken';

        print('🔄 Reintentando request original');
        return handler.resolve(await _dio.fetch(options));
      } on DioException catch (e) {
        print('💥 Error en refresh token: ${e.message}');
        if (e.response?.statusCode == refreshTokenExpired) {
          await _tokenService.clearToken();
        }
        return handler.next(err);
      }
    }
    return handler.next(err);
  }
}
