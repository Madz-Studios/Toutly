part of 'navigation_cubit.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    @required bool isHomeScreen,
    @required bool isSavedScreen,
    @required bool isPostBarterScreen,
    @required bool isMessagesScreen,
    @required bool isUserProfileScreen,
    @required int index,
  }) = _NavigationState;

  factory NavigationState.homeScreen(int index) => NavigationState(
        isHomeScreen: true,
        isSavedScreen: false,
        isPostBarterScreen: false,
        isMessagesScreen: false,
        isUserProfileScreen: false,
        index: index,
      );

  factory NavigationState.savedScreen(int index) => NavigationState(
        isHomeScreen: false,
        isSavedScreen: true,
        isPostBarterScreen: false,
        isMessagesScreen: false,
        isUserProfileScreen: false,
        index: index,
      );

  factory NavigationState.postBarterScreen(int index) => NavigationState(
        isHomeScreen: false,
        isSavedScreen: false,
        isPostBarterScreen: true,
        isMessagesScreen: false,
        isUserProfileScreen: false,
        index: index,
      );

  factory NavigationState.messagesScreen(int index) => NavigationState(
        isHomeScreen: false,
        isSavedScreen: false,
        isPostBarterScreen: false,
        isMessagesScreen: true,
        isUserProfileScreen: false,
        index: index,
      );
  factory NavigationState.userProfile(int index) => NavigationState(
        isHomeScreen: false,
        isSavedScreen: false,
        isPostBarterScreen: false,
        isMessagesScreen: false,
        isUserProfileScreen: true,
        index: index,
      );
}

//@freezed
//abstract class NavigationState with _$NavigationState {
//  const factory NavigationState.homeScreen(int index) =
//  NavigationStateHomeScreen;
//  const factory NavigationState.likesScreen(int index) =
//  NavigationStateSearchScreen;
//  const factory NavigationState.postBarterScreen(int index) =
//  NavigationStatePostItemScreen;
//  const factory NavigationState.userProfile(int index) =
//  NavigationStateUserBarterListingcreen;
//  const factory NavigationState.inboxScreen(int index) =
//  NavigationStateInboxScreen;
//}
