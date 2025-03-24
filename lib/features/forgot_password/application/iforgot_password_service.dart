import 'package:planets_flutter/common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:planets_flutter/features/forgot_password/data/dto/request/forgot_password_request.dart';

abstract interface class IForgotPasswordService {
  Future<Result<bool, Failure>> forgotPassword(ForgotPasswordRequest data);
}
