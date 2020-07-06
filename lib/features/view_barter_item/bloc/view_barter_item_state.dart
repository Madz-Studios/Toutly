part of 'view_barter_item_bloc.dart';

@freezed
abstract class ViewBarterItemState with _$ViewBarterItemState {
  const factory ViewBarterItemState.initial() = ViewBarterItemStateInitial;
  const factory ViewBarterItemState.loadBarterItem(BarterModel barterModel) =
      ViewBarterItemStateLoadBarterItem;
}
