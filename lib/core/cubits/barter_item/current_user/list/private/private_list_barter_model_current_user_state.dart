part of 'private_list_barter_model_current_user_cubit.dart';

@freezed
abstract class PrivateListBarterModelCurrentUserState
    with _$PrivateListBarterModelCurrentUserState {
  const factory PrivateListBarterModelCurrentUserState({
    @required Stream<QuerySnapshot> userBarterItems,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _PrivateListBarterModelCurrentUserState;

  factory PrivateListBarterModelCurrentUserState.empty() =>
      PrivateListBarterModelCurrentUserState(
        userBarterItems: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory PrivateListBarterModelCurrentUserState.loading() =>
      PrivateListBarterModelCurrentUserState(
        userBarterItems: Stream.empty(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory PrivateListBarterModelCurrentUserState.failure(
          {@required String info}) =>
      PrivateListBarterModelCurrentUserState(
        userBarterItems: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory PrivateListBarterModelCurrentUserState.success(
          {@required Stream<QuerySnapshot> userBarterItems,
          @required String info}) =>
      PrivateListBarterModelCurrentUserState(
        userBarterItems: userBarterItems,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
