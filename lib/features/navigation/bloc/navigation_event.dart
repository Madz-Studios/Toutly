part of 'navigation_bloc.dart';

@freezed
abstract class NavigationEvent implements _$NavigationEvent {
  const factory NavigationEvent.goToHomeScreenEvent() =
      NavigationEventGoToHomeScreen;
  const factory NavigationEvent.goToSearchScreenEvent() =
      NavigationEventGoToSearchScreen;
  const factory NavigationEvent.goToPostScreenEvent() =
      NavigationEventGoToPostScreen;
  const factory NavigationEvent.goToFavouritesScreenEvent() =
      NavigationEventGoToFavouriteScreen;
  const factory NavigationEvent.goToInboxScreenEvent() =
      NavigationEventGoToInboxScreen;
}
