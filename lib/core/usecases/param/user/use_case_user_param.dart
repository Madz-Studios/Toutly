import 'package:Toutly/core/models/user/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

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
abstract class UseCaseUserParamUserModel with _$UseCaseUserParamUserModel {
  const factory UseCaseUserParamUserModel.init(UserModel userModel) =
      UseCaseUserParamModelInit;
}

@freezed
abstract class UseCaseUserParamUserModelWithPickedFile
    with _$UseCaseUserParamUserModelWithPickedFile {
  const factory UseCaseUserParamUserModelWithPickedFile.init(
          PickedFile pickedFile, UserModel userModel) =
      UseCaseUserParamUserModelWithPickedFileInit;
}

@freezed
abstract class UseCaseUserParamUserModelWithItemId
    with _$UseCaseUserParamUserModelWithItemId {
  const factory UseCaseUserParamUserModelWithItemId.init(
      UserModel user, String itemId) = UseCaseUserParamUserIdWithItemIdInit;
}

@freezed
abstract class UseCaseUserParamGeoLocation with _$UseCaseUserParamGeoLocation {
  const factory UseCaseUserParamGeoLocation.init(
      double latitude, double longitude) = UseCaseUserParamGeoLocationInit;
}
