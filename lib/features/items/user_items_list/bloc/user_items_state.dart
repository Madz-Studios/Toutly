part of 'user_items_bloc.dart';

@freezed
abstract class UserItemsState implements _$UserItemsState {
  const factory UserItemsState.initial() = UserItemsStateInitial;
  const factory UserItemsState.inProgress() = UserItemsStateInProgress;
  const factory UserItemsState.success(List<BarterModel> barterList) =
      UserItemsStateSuccess;
  const factory UserItemsState.failure(String message) = UserItemsStateFailure;
}
