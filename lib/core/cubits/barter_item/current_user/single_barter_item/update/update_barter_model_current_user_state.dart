part of 'update_barter_model_current_user_cubit.dart';

@freezed
abstract class UpdateBarterModelCurrentUserState
    implements _$UpdateBarterModelCurrentUserState {
  const UpdateBarterModelCurrentUserState._();
  const factory UpdateBarterModelCurrentUserState({
    @required bool isTitleValid,
    @required bool isDescriptionValid,
    @required bool isPreferredItemValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _UpdateBarterModelCurrentUserState;

  factory UpdateBarterModelCurrentUserState.empty() =>
      UpdateBarterModelCurrentUserState(
        isTitleValid: true,
        isDescriptionValid: true,
        isPreferredItemValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory UpdateBarterModelCurrentUserState.loading() =>
      UpdateBarterModelCurrentUserState(
        isTitleValid: true,
        isDescriptionValid: true,
        isPreferredItemValid: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory UpdateBarterModelCurrentUserState.failure({String info}) =>
      UpdateBarterModelCurrentUserState(
        isTitleValid: true,
        isDescriptionValid: true,
        isPreferredItemValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory UpdateBarterModelCurrentUserState.success(String info) =>
      UpdateBarterModelCurrentUserState(
        isTitleValid: true,
        isDescriptionValid: true,
        isPreferredItemValid: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );

  bool get isUpdatePostFormValid =>
      isTitleValid && isDescriptionValid && isPreferredItemValid;
}
