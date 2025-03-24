import 'package:planets_flutter/features/signup/data/dto/response/sign_up_response.dart';
import 'package:planets_flutter/features/signup/domain/model/sign_up_model.dart';

abstract interface class ISignUpModelMapper {
  SignUpModel mapToSignUpModel(SignUpResponse data);
}
