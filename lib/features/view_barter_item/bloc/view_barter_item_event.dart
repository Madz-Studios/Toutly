part of 'view_barter_item_bloc.dart';

@freezed
abstract class ViewBarterItemEvent with _$ViewBarterItemEvent {
  const factory ViewBarterItemEvent.initial() = ViewBarterItemEventInitial;
  const factory ViewBarterItemEvent.viewBarterItem(BarterModel barterModel) =
      ViewBarterItemEventViewBarterItem;
}
