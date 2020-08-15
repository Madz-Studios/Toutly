part of 'list_barter_model_current_user_cubit.dart';

@freezed
abstract class ListBarterModelCurrentUserState
    with _$ListBarterModelCurrentUserState {
  const factory ListBarterModelCurrentUserState({
    @required Stream<QuerySnapshot> userBarterItems,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _ListBarterModelCurrentUserState;

  factory ListBarterModelCurrentUserState.empty() =>
      ListBarterModelCurrentUserState(
        userBarterItems: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory ListBarterModelCurrentUserState.loading() =>
      ListBarterModelCurrentUserState(
        userBarterItems: Stream.empty(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory ListBarterModelCurrentUserState.failure({@required String info}) =>
      ListBarterModelCurrentUserState(
        userBarterItems: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory ListBarterModelCurrentUserState.success(
          {@required Stream<QuerySnapshot> userBarterItems,
          @required String info}) =>
      ListBarterModelCurrentUserState(
        userBarterItems: userBarterItems,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
