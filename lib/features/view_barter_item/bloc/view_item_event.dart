part of 'view_item_bloc.dart';

@freezed
abstract class ViewItemEvent with _$ViewItemEvent {
  const factory ViewItemEvent.viewBarterItem({BarterModel barterModel}) =
      ViewItemEventViewBarterItem;
  const factory ViewItemEvent.editBarterItem({BarterModel barterModel}) =
      ViewItemEventEditBarterItem;
}
