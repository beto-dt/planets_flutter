import 'package:planets_flutter/features/forgot_password/data/dto/request/forgot_password_request.dart';
import 'package:planets_flutter/features/forgot_password/data/dto/response/forgot_password_response.dart';

abstract interface class IForgotPasswordRepository {
  Future<ForgotPasswordResponse> forgotPassword(ForgotPasswordRequest data);
}
