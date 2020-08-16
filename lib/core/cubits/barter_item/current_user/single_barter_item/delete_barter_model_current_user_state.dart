part of 'delete_barter_model_current_user_cubit.dart';

@freezed
abstract class DeleteBarterModelCurrentUserState
    with _$DeleteBarterModelCurrentUserState {
  const factory DeleteBarterModelCurrentUserState({
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _DeleteBarterModelCurrentUserState;

  factory DeleteBarterModelCurrentUserState.empty() =>
      DeleteBarterModelCurrentUserState(
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory DeleteBarterModelCurrentUserState.loading() =>
      DeleteBarterModelCurrentUserState(
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory DeleteBarterModelCurrentUserState.failure(String info) =>
      DeleteBarterModelCurrentUserState(
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory DeleteBarterModelCurrentUserState.success(String info) =>
      DeleteBarterModelCurrentUserState(
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
