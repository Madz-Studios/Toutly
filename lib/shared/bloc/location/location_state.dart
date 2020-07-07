part of 'location_bloc.dart';

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState({
    GeoFirePoint geoFirePoint,
    Placemark placeMark,
  }) = _LocationState;

  factory LocationState.init() => LocationState(
        placeMark: Placemark(),
        geoFirePoint: GeoFirePoint(0, 0),
      );

  factory LocationState.setInitialLocationData({
    @required geoFirePoint,
    @required placeMark,
  }) =>
      LocationState(
        geoFirePoint: geoFirePoint,
        placeMark: placeMark,
      );

  factory LocationState.updateLocationData({
    @required geoFirePoint,
    @required placeMark,
  }) =>
      LocationState(
        geoFirePoint: geoFirePoint,
        placeMark: placeMark,
      );
}
