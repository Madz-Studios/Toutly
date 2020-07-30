part of 'view_barter_item_bloc.dart';

@freezed
abstract class ViewBarterItemState with _$ViewBarterItemState {
  const factory ViewBarterItemState({
    UserModel currentUser,
    BarterModel barterModel,
  }) = _ViewBarterItemState;

  factory ViewBarterItemState.init() => ViewBarterItemState();

  factory ViewBarterItemState.loadBarterItem({
    UserModel currentUser,
    BarterModel barterModel,
  }) =>
      ViewBarterItemState(
        currentUser: currentUser,
        barterModel: barterModel,
      );
}
