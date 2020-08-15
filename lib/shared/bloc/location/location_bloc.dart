import 'package:app_settings/app_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'location_bloc.freezed.dart';
part 'location_event.dart';
part 'location_state.dart';

@lazySingleton
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final Geolocator geoLocator;
  LocationBloc(
    this.geoLocator,
  ) : super(LocationState.empty());

  @override
  Stream<LocationState> mapEventToState(LocationEvent event) async* {
    yield* event.map(
      init: (_) async* {},
      getInitialUserLocation: (e) async* {
        try {
          yield LocationState.loading();
          Position position = await geoLocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.low);

          GeoPoint geoPoint = GeoPoint(position.latitude, position.longitude);

          debugPrint(
              'getInitialUserLocation Position latitude = ${position.latitude}');
          debugPrint(
              'getInitialUserLocation Position longitude = ${position.longitude}');

          List<Placemark> p = await geoLocator.placemarkFromCoordinates(
              position.latitude, position.longitude);

          Placemark place = p[0];

          yield LocationState.success(geoPoint: geoPoint, placeMark: place);
        } on PlatformException catch (platFormException) {
          yield LocationState.failure(platFormException.message);
          if (platFormException.code == 'PERMISSION_DENIED') {
            AppSettings.openLocationSettings();
          } else {
            debugPrint('platFormException code ${platFormException.code}');
            debugPrint(
                'platFormException message ${platFormException.message}');
          }
        }
      },
      updateUserLocation: (e) async* {
        try {
          yield LocationState.loading();
          GeoPoint geoPoint = GeoPoint(e.latitude, e.longitude);

          debugPrint('Position latitude = ${e.latitude}');
          debugPrint('Position longitude = ${e.longitude}');

          List<Placemark> p = await geoLocator.placemarkFromCoordinates(
              e.latitude, e.longitude);

          Placemark place = p[0];

          yield LocationState.success(geoPoint: geoPoint, placeMark: place);
        } on PlatformException catch (platFormException) {
          yield LocationState.failure(platFormException.message);
          if (platFormException.code == 'PERMISSION_DENIED') {
            AppSettings.openLocationSettings();
          } else {
            debugPrint('platFormException code ${platFormException.code}');
            debugPrint(
                'platFormException message ${platFormException.message}');
          }
        }
      },
    );
  }
}
