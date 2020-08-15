part of 'other_user_cubit.dart';

@freezed
abstract class OtherUserState with _$OtherUserState {
  const factory OtherUserState({
    @required UserModel otherUserModel,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _OtherUserState;

  factory OtherUserState.empty() => OtherUserState(
        otherUserModel: UserModel(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory OtherUserState.loading() => OtherUserState(
        otherUserModel: UserModel(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory OtherUserState.failure(String info) => OtherUserState(
        otherUserModel: UserModel(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory OtherUserState.success(UserModel otherUserModel) => OtherUserState(
        otherUserModel: otherUserModel,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: '',
      );
}
