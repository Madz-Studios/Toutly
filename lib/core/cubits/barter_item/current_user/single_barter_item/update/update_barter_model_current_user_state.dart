part of 'update_barter_model_current_user_cubit.dart';

@freezed
abstract class UpdateBarterModelCurrentUserState
    with _$UpdateBarterModelCurrentUserState {
  const factory UpdateBarterModelCurrentUserState({
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _DeleteBarterModelCurrentUserState;

  factory UpdateBarterModelCurrentUserState.empty() =>
      UpdateBarterModelCurrentUserState(
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory UpdateBarterModelCurrentUserState.loading() =>
      UpdateBarterModelCurrentUserState(
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory UpdateBarterModelCurrentUserState.failure({String info}) =>
      UpdateBarterModelCurrentUserState(
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory UpdateBarterModelCurrentUserState.success(String info) =>
      UpdateBarterModelCurrentUserState(
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
