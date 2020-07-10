import 'package:app_settings/app_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'location_bloc.freezed.dart';
part 'location_event.dart';
part 'location_state.dart';

@lazySingleton
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final Geolocator geoLocator;
  final Geoflutterfire geoFlutterFire;
  LocationBloc(
    this.geoLocator,
    this.geoFlutterFire,
  ) : super(LocationState.init());

  @override
  Stream<LocationState> mapEventToState(LocationEvent event) async* {
    yield* event.map(
        init: (_) async* {},
        getInitialUserLocation: (e) async* {
          try {
            Position position = await geoLocator.getCurrentPosition(
                desiredAccuracy: LocationAccuracy.low);

            GeoPoint geoPoint = GeoPoint(position.latitude, position.longitude);

            GeoFirePoint geoFirePoint = geoFlutterFire.point(
              latitude: geoPoint.latitude,
              longitude: geoPoint.longitude,
            );

            print('Position latitude = ${position.latitude}');
            print('Position longitude = ${position.longitude}');

            List<Placemark> p = await geoLocator.placemarkFromCoordinates(
                position.latitude, position.longitude);

            Placemark place = p[0];

            yield LocationState.setInitialLocationData(
                geoFirePoint: geoFirePoint, placeMark: place);
          } on PlatformException catch (platFormException) {
            if (platFormException.code == 'PERMISSION_DENIED') {
              AppSettings.openLocationSettings();
            } else {
              print('platFormException code ${platFormException.code}');
              print('platFormException message ${platFormException.message}');
            }
          }
        },
        updateUserLocation: (e) async* {
          try {
            GeoPoint geoPoint = GeoPoint(e.latitude, e.longitude);

            GeoFirePoint geoFirePoint = geoFlutterFire.point(
              latitude: geoPoint.latitude,
              longitude: geoPoint.longitude,
            );

            print('Position latitude = ${e.latitude}');
            print('Position longitude = ${e.longitude}');

            List<Placemark> p = await geoLocator.placemarkFromCoordinates(
                e.latitude, e.longitude);

            Placemark place = p[0];

            yield LocationState.updateLocationData(
              geoFirePoint: geoFirePoint,
              placeMark: place,
            );
          } on PlatformException catch (platFormException) {
            if (platFormException.code == 'PERMISSION_DENIED') {
              AppSettings.openLocationSettings();
            } else {
              print('platFormException code ${platFormException.code}');
              print('platFormException message ${platFormException.message}');
            }
          }
        });
  }
}
