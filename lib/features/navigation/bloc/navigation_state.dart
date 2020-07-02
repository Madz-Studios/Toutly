part of 'navigation_bloc.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState.homeScreen(int index) =
      NavigationStateHomeScreen;
  const factory NavigationState.searchScreen(int index) =
      NavigationStateSearchScreen;
  const factory NavigationState.postScreen(int index) =
      NavigationStatePostItemScreen;
  const factory NavigationState.favouriteScreen(int index) =
      NavigationStateFavouritescreen;
  const factory NavigationState.inboxScreen(int index) =
      NavigationStateInboxScreen;
  const factory NavigationState.viewItemScreen(int index) =
      NavigationStateViewItemScreen;
}
