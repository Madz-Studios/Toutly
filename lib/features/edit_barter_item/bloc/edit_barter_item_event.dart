part of 'edit_barter_item_bloc.dart';

@freezed
abstract class EditBarterItemEvent with _$EditBarterItemEvent {
  const factory EditBarterItemEvent.initial() = EditBarterItemEventInitial;
  const factory EditBarterItemEvent.editBarterItem(BarterModel barterModel) =
      EditBarterItemEventEditBarterItem;
}
