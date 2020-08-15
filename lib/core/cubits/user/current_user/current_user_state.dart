part of 'current_user_cubit.dart';

@freezed
abstract class CurrentUserState implements _$CurrentUserState {
  const CurrentUserState._();
  const factory CurrentUserState({
    @required UserModel currentUserModel,
    @required bool isNameValid,
    @required bool isLocationValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _CurrentUserState;

  factory CurrentUserState.empty() => CurrentUserState(
        currentUserModel: UserModel(),
        isNameValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory CurrentUserState.loading() => CurrentUserState(
        currentUserModel: UserModel(),
        isNameValid: true,
        isLocationValid: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory CurrentUserState.failure(String info) => CurrentUserState(
        currentUserModel: UserModel(),
        isNameValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory CurrentUserState.success(UserModel currentUserModel) =>
      CurrentUserState(
        currentUserModel: currentUserModel,
        isNameValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: '',
      );
}
