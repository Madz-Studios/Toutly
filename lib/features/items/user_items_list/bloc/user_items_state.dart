part of 'user_items_bloc.dart';

@freezed
abstract class UserItemsState implements _$UserItemsState {
  const factory UserItemsState({
    @required List<BarterModel> userBarterItems,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _UserItemsState;

  factory UserItemsState.empty() => UserItemsState(
        userBarterItems: List<BarterModel>(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory UserItemsState.loading() => UserItemsState(
        userBarterItems: List<BarterModel>(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory UserItemsState.failure({@required String info}) => UserItemsState(
        userBarterItems: List<BarterModel>(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory UserItemsState.success(List<BarterModel> userBarterItems) =>
      UserItemsState(
        userBarterItems: userBarterItems,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: '',
      );
}
