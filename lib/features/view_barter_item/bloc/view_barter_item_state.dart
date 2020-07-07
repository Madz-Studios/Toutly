part of 'view_barter_item_bloc.dart';

@freezed
abstract class ViewBarterItemState with _$ViewBarterItemState {
  const factory ViewBarterItemState({
    BarterModel barterModel,
  }) = _ViewBarterItemState;

  factory ViewBarterItemState.init() => ViewBarterItemState(
        barterModel: BarterModel(),
      );

  factory ViewBarterItemState.loadBarterItem({
    BarterModel barterModel,
  }) =>
      ViewBarterItemState(
        barterModel: barterModel,
      );
}
