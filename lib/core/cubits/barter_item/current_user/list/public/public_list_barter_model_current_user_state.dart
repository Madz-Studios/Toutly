part of 'public_list_barter_model_current_user_cubit.dart';

@freezed
abstract class PublicListBarterModelCurrentUserState
    with _$PublicListBarterModelCurrentUserState {
  const factory PublicListBarterModelCurrentUserState({
    @required Stream<QuerySnapshot> userBarterItems,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _PublicListBarterModelCurrentUserState;

  factory PublicListBarterModelCurrentUserState.empty() =>
      PublicListBarterModelCurrentUserState(
        userBarterItems: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory PublicListBarterModelCurrentUserState.loading() =>
      PublicListBarterModelCurrentUserState(
        userBarterItems: Stream.empty(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory PublicListBarterModelCurrentUserState.failure(
          {@required String info}) =>
      PublicListBarterModelCurrentUserState(
        userBarterItems: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory PublicListBarterModelCurrentUserState.success(
          {@required Stream<QuerySnapshot> userBarterItems,
          @required String info}) =>
      PublicListBarterModelCurrentUserState(
        userBarterItems: userBarterItems,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
