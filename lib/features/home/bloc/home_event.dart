part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.checkUserLocation() = HomeCheckUserLocation;
  const factory HomeEvent.loadBarterFeeds() = HomeGetUserLocation;
}
