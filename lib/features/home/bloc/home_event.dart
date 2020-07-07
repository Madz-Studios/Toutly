part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getUserLocation() = HomeEventGetUserLocation;
  const factory HomeEvent.loadBarterFeeds() = HomeEventLoadBarterFeeds;
}
