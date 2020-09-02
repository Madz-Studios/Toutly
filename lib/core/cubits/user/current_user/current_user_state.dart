part of 'current_user_cubit.dart';

@freezed
abstract class CurrentUserState implements _$CurrentUserState {
  const CurrentUserState._();
  const factory CurrentUserState({
    UserModel currentUserModel,
    @required bool isAnonymous,
    @required bool isNameValid,
    @required bool isLocationValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _CurrentUserState;

  factory CurrentUserState.empty() => CurrentUserState(
        currentUserModel: UserModel(),
        isAnonymous: false,
        isNameValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory CurrentUserState.loading() => CurrentUserState(
        currentUserModel: UserModel(),
        isAnonymous: false,
        isNameValid: true,
        isLocationValid: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory CurrentUserState.failure(String info) => CurrentUserState(
        currentUserModel: UserModel(),
        isAnonymous: false,
        isNameValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory CurrentUserState.success({
    @required UserModel currentUserModel,
    @required String info,
    @required bool isAnonymous,
  }) =>
      CurrentUserState(
        currentUserModel: currentUserModel,
        isAnonymous: isAnonymous,
        isNameValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
