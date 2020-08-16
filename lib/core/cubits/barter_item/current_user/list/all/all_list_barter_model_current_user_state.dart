part of 'all_list_barter_model_current_user_cubit.dart';

@freezed
abstract class AllListBarterModelCurrentUserState
    with _$AllListBarterModelCurrentUserState {
  const factory AllListBarterModelCurrentUserState({
    @required Stream<QuerySnapshot> userBarterItems,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _PrivateListBarterModelCurrentUserState;

  factory AllListBarterModelCurrentUserState.empty() =>
      AllListBarterModelCurrentUserState(
        userBarterItems: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory AllListBarterModelCurrentUserState.loading() =>
      AllListBarterModelCurrentUserState(
        userBarterItems: Stream.empty(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory AllListBarterModelCurrentUserState.failure({@required String info}) =>
      AllListBarterModelCurrentUserState(
        userBarterItems: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory AllListBarterModelCurrentUserState.success(
          {@required Stream<QuerySnapshot> userBarterItems,
          @required String info}) =>
      AllListBarterModelCurrentUserState(
        userBarterItems: userBarterItems,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
