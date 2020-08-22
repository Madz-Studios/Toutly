import 'package:app_settings/app_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'location_cubit.freezed.dart';
part 'location_state.dart';

@lazySingleton
class LocationCubit extends Cubit<LocationState> {
  final Geolocator geoLocator;
  LocationCubit(
    this.geoLocator,
  ) : super(LocationState.empty());

  getInitialUserLocation() async {
    try {
      emit(LocationState.loading());
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

      emit(LocationState.success(
          geoPoint: geoPoint, placeMark: place, info: 'Success'));
    } on PlatformException catch (platFormException) {
      emit(LocationState.failure(info: platFormException.message));
      if (platFormException.code == 'PERMISSION_DENIED') {
        AppSettings.openLocationSettings();
      } else {
        debugPrint('platFormException code ${platFormException.code}');
        debugPrint('platFormException message ${platFormException.message}');
      }
    } on Exception catch (e) {
      emit(LocationState.failure(info: e.toString()));
    }
  }

  updateUserLocation(double latitude, double longitude) async {
    try {
      emit(LocationState.loading());
      GeoPoint geoPoint = GeoPoint(latitude, longitude);

      List<Placemark> p =
          await geoLocator.placemarkFromCoordinates(latitude, longitude);

      Placemark place = p[0];

      emit(LocationState.success(
          geoPoint: geoPoint, placeMark: place, info: 'Success'));
    } on PlatformException catch (platFormException) {
      emit(LocationState.failure(info: platFormException.message));
      if (platFormException.code == 'PERMISSION_DENIED') {
        AppSettings.openLocationSettings();
      } else {
        debugPrint('platFormException code ${platFormException.code}');
        debugPrint('platFormException message ${platFormException.message}');
      }
    } on Exception catch (e) {
      emit(LocationState.failure(info: e.toString()));
    }
  }
}
