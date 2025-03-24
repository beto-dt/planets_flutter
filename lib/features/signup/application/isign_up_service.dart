import 'package:planets_flutter/common/exception/failure.dart';
import 'package:planets_flutter/features/signup/data/dto/request/sign_up_request.dart';
import 'package:planets_flutter/features/signup/domain/model/sign_up_model.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class ISignUpService {
  Future<Result<SignUpModel, Failure>> signUp(SignUpRequest data);
}
