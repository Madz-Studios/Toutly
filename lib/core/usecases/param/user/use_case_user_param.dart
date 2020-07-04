import 'package:Toutly/core/models/user/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_case_user_param.freezed.dart';

@freezed
abstract class UseCaseUserParamEmail with _$UseCaseUserParamEmail {
  const factory UseCaseUserParamEmail.init(String email) =
      UseCaseUserParamEmailInit;
}

@freezed
abstract class UseCaseUserParamEmailPassword
    with _$UseCaseUserParamEmailPassword {
  const factory UseCaseUserParamEmailPassword.init(
    String email,
    String password,
  ) = UseCaseUserParamEmailPasswordInit;
}

@freezed
abstract class UseCaseUserParamUserId with _$UseCaseUserParamUserId {
  const factory UseCaseUserParamUserId.init(String userId) =
      UseCaseUserParamUidInit;
}

@freezed
abstract class UseCaseUserParamModel with _$UseCaseUserParamModel {
  const factory UseCaseUserParamModel.init(UserModel userModel) =
      UseCaseUserParamModelInit;
}

@freezed
abstract class UseCaseUserParamGeoLocation with _$UseCaseUserParamGeoLocation {
  const factory UseCaseUserParamGeoLocation.init(
      double latitude, double longitude) = UseCaseUserParamGeoLocationInit;
}
