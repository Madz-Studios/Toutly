part of 'user_items_bloc.dart';

@freezed
abstract class UserItemsEvent with _$UserItemsEvent {
  const factory UserItemsEvent.init() = UserItemsEventInit;
  const factory UserItemsEvent.loadUserBarterItems(int length) =
      UserItemsEventLoadUserBarterItems;
}
