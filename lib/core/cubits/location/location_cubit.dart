import 'package:Toutly/core/cubits/privacy_services/privacy_services_cubit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geocoding_platform_interface/geocoding_platform_interface.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'location_cubit.freezed.dart';
part 'location_state.dart';

@lazySingleton
class LocationCubit extends Cubit<LocationState> {
  final GeolocatorPlatform geoLocator;
  final PrivacyServicesCubit privacyServicesCubit;
  LocationCubit(
    this.privacyServicesCubit,
    this.geoLocator,
  ) : super(LocationState.empty());

  double _defaultLatitude = 10.2833322;
  double _defaultLongitude = 123.8999964;

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

      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);

      Placemark place = placemarks[0];

      privacyServicesCubit.setLocationServiceEnabled(true);

      emit(LocationState.success(
          geoPoint: geoPoint, placeMark: place, info: 'Success'));
    } on PermissionDeniedException catch (permissionDeniedException) {
      ///put a default location if the user denied location service access

      _setDefaultLocation(permissionDeniedException);
    } on Exception catch (e) {
      emit(LocationState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }

  updateUserLocation(double latitude, double longitude) async {
    try {
      emit(LocationState.loading());
      GeoPoint geoPoint = GeoPoint(latitude, longitude);

      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);

      Placemark place = placemarks[0];

      emit(LocationState.success(
          geoPoint: geoPoint, placeMark: place, info: 'Success'));
    } on PermissionDeniedException catch (permissionDeniedException) {
      _setDefaultLocation(permissionDeniedException);
      throw FlutterError(permissionDeniedException.message);
    } on Exception catch (e) {
      emit(LocationState.failure(info: e.toString()));
      throw FlutterError(e.toString());
    }
  }

  void _setDefaultLocation(
      PermissionDeniedException permissionDeniedException) async {
    GeoPoint geoPoint = GeoPoint(
      _defaultLatitude,
      _defaultLongitude,
    );
    List<Placemark> placeMarks =
        await placemarkFromCoordinates(geoPoint.latitude, geoPoint.longitude);

    Placemark place = placeMarks[0];
    privacyServicesCubit.setLocationServiceEnabled(false);
    emit(
      LocationState.success(
        geoPoint: geoPoint,
        placeMark: place,
        info: '${permissionDeniedException.message}',
      ),
    );
  }
}
