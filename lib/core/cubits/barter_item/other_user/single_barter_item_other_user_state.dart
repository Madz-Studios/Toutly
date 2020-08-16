part of 'single_barter_item_other_user_cubit.dart';

@freezed
abstract class SingleBarterItemOtherUserState
    with _$SingleBarterItemOtherUserState {
  const factory SingleBarterItemOtherUserState({
    @required BarterModel otherUserBarterItem,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _SingleBarterItemOtherUserState;

  factory SingleBarterItemOtherUserState.empty() =>
      SingleBarterItemOtherUserState(
        otherUserBarterItem: BarterModel(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SingleBarterItemOtherUserState.loading() =>
      SingleBarterItemOtherUserState(
        otherUserBarterItem: BarterModel(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory SingleBarterItemOtherUserState.failure({@required String info}) =>
      SingleBarterItemOtherUserState(
        otherUserBarterItem: BarterModel(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory SingleBarterItemOtherUserState.success(
          {@required BarterModel otherUserBarterModel,
          @required String info}) =>
      SingleBarterItemOtherUserState(
        otherUserBarterItem: otherUserBarterModel,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
