part of 'view_item_bloc.dart';

@freezed
abstract class ViewItemEvent with _$ViewItemEvent {
  const factory ViewItemEvent.viewBarterItem({
    @required BarterModel barterModel,
  }) = ViewItemEventViewBarterItem;

  const factory ViewItemEvent.editBarterItem({
    @required BarterModel barterModel,
    @required Map<String, PickedFile> pickedFileList,
  }) = ViewItemEventEditBarterItem;
}
