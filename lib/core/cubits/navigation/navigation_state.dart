part of 'navigation_cubit.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState.homeScreen(int index) =
      NavigationStateHomeScreen;
  const factory NavigationState.likesScreen(int index) =
      NavigationStateSearchScreen;
  const factory NavigationState.postBarterScreen(int index) =
      NavigationStatePostItemScreen;
  const factory NavigationState.userProfile(int index) =
      NavigationStateUserBarterListingcreen;
  const factory NavigationState.inboxScreen(int index) =
      NavigationStateInboxScreen;
}
