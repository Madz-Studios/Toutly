part of 'other_user_cubit.dart';

@freezed
abstract class OtherUserState with _$OtherUserState {
  const factory OtherUserState({
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _OtherUserState;

  factory OtherUserState.empty() => OtherUserState(
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory OtherUserState.loading() => OtherUserState(
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory OtherUserState.failure(String info) => OtherUserState(
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory OtherUserState.success() => OtherUserState(
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: '',
      );
}
