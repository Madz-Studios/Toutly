part of 'navigation_bloc.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState.homeScreen(int index) =
      NavigationStateHomeScreen;
  const factory NavigationState.likesScreen(int index) =
      NavigationStateSearchScreen;
  const factory NavigationState.postScreen(int index) =
      NavigationStatePostItemScreen;
  const factory NavigationState.userProfile(int index) =
      NavigationStateUserBarterListingcreen;
  const factory NavigationState.inboxScreen(int index) =
      NavigationStateInboxScreen;
}
