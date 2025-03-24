import 'package:planets_flutter/common/exception/failure.dart';
import 'package:planets_flutter/features/login/data/dto/request/login_request.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class ILoginService {
  Future<Result<bool, Failure>> login(LoginRequest loginRequest);
}
