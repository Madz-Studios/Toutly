part of 'location_cubit.dart';

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState({
    @required GeoPoint geoPoint,
    @required Placemark placeMark,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    String info,
  }) = _LocationState;

  factory LocationState.empty() => LocationState(
        geoPoint: GeoPoint(0, 0),
        placeMark: Placemark(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory LocationState.loading() => LocationState(
        geoPoint: GeoPoint(0, 0),
        placeMark: Placemark(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory LocationState.failure(String info) => LocationState(
        geoPoint: GeoPoint(0, 0),
        placeMark: Placemark(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory LocationState.success(
          {@required geoPoint, @required placeMark, @required String info}) =>
      LocationState(
        geoPoint: geoPoint,
        placeMark: placeMark,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
