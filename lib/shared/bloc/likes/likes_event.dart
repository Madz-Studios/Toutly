part of 'likes_bloc.dart';

@freezed
abstract class LikesEvent with _$LikesEvent {
  const factory LikesEvent.initial() = LikesEventInitial;

  const factory LikesEvent.getAllUserFavouriteBarterItems(
      List<String> itemIds) = LikesEventGetAllUserFavouriteBarterItems;
}
