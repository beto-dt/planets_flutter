
import 'package:planets_flutter/features/login/data/dto/request/login_request.dart';
import 'package:planets_flutter/features/login/data/dto/response/login_response.dart';

abstract interface class ILoginRepository {
  Future<LoginResponse> login(LoginRequest loginRequest);
}
