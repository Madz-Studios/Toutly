part of 'user_bloc.dart';

@freezed
abstract class UserState implements _$UserState {
  const UserState._();
  const factory UserState({
    @required UserModel userModel,
    @required bool isNameValid,
    @required bool isLocationValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _UserState;

  factory UserState.empty() => UserState(
        userModel: UserModel(),
        isNameValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory UserState.loading() => UserState(
        userModel: UserModel(),
        isNameValid: true,
        isLocationValid: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory UserState.failure({@required String info}) => UserState(
        userModel: UserModel(),
        isNameValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory UserState.success({@required UserModel userModel}) => UserState(
        userModel: userModel,
        isNameValid: true,
        isLocationValid: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: '',
      );
}
