part of 'user_barter_listing_bloc.dart';

@freezed
abstract class UserBarterListingState implements _$UserBarterListingState {
  const factory UserBarterListingState.initial() =
      UserBarterListingStateInitial;

  const factory UserBarterListingState.loadUserListing(
      Stream<QuerySnapshot> listings) = UserBarterListingStateLoadUserListing;
}
