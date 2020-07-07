// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LocationEventTearOff {
  const _$LocationEventTearOff();

  LocationEventInit init() {
    return const LocationEventInit();
  }

  LocationEventGetUserLocation getInitialUserLocation() {
    return const LocationEventGetUserLocation();
  }

  LocationEventUpdateUserLocation updateUserLocation(
      double latitude, double longitude) {
    return LocationEventUpdateUserLocation(
      latitude,
      longitude,
    );
  }
}

// ignore: unused_element
const $LocationEvent = _$LocationEventTearOff();

mixin _$LocationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result getInitialUserLocation(),
    @required Result updateUserLocation(double latitude, double longitude),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result getInitialUserLocation(),
    Result updateUserLocation(double latitude, double longitude),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(LocationEventInit value),
    @required Result getInitialUserLocation(LocationEventGetUserLocation value),
    @required Result updateUserLocation(LocationEventUpdateUserLocation value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(LocationEventInit value),
    Result getInitialUserLocation(LocationEventGetUserLocation value),
    Result updateUserLocation(LocationEventUpdateUserLocation value),
    @required Result orElse(),
  });
}

abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
}

class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;
}

abstract class $LocationEventInitCopyWith<$Res> {
  factory $LocationEventInitCopyWith(
          LocationEventInit value, $Res Function(LocationEventInit) then) =
      _$LocationEventInitCopyWithImpl<$Res>;
}

class _$LocationEventInitCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventInitCopyWith<$Res> {
  _$LocationEventInitCopyWithImpl(
      LocationEventInit _value, $Res Function(LocationEventInit) _then)
      : super(_value, (v) => _then(v as LocationEventInit));

  @override
  LocationEventInit get _value => super._value as LocationEventInit;
}

class _$LocationEventInit implements LocationEventInit {
  const _$LocationEventInit();

  @override
  String toString() {
    return 'LocationEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LocationEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result getInitialUserLocation(),
    @required Result updateUserLocation(double latitude, double longitude),
  }) {
    assert(init != null);
    assert(getInitialUserLocation != null);
    assert(updateUserLocation != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result getInitialUserLocation(),
    Result updateUserLocation(double latitude, double longitude),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(LocationEventInit value),
    @required Result getInitialUserLocation(LocationEventGetUserLocation value),
    @required Result updateUserLocation(LocationEventUpdateUserLocation value),
  }) {
    assert(init != null);
    assert(getInitialUserLocation != null);
    assert(updateUserLocation != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(LocationEventInit value),
    Result getInitialUserLocation(LocationEventGetUserLocation value),
    Result updateUserLocation(LocationEventUpdateUserLocation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class LocationEventInit implements LocationEvent {
  const factory LocationEventInit() = _$LocationEventInit;
}

abstract class $LocationEventGetUserLocationCopyWith<$Res> {
  factory $LocationEventGetUserLocationCopyWith(
          LocationEventGetUserLocation value,
          $Res Function(LocationEventGetUserLocation) then) =
      _$LocationEventGetUserLocationCopyWithImpl<$Res>;
}

class _$LocationEventGetUserLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventGetUserLocationCopyWith<$Res> {
  _$LocationEventGetUserLocationCopyWithImpl(
      LocationEventGetUserLocation _value,
      $Res Function(LocationEventGetUserLocation) _then)
      : super(_value, (v) => _then(v as LocationEventGetUserLocation));

  @override
  LocationEventGetUserLocation get _value =>
      super._value as LocationEventGetUserLocation;
}

class _$LocationEventGetUserLocation implements LocationEventGetUserLocation {
  const _$LocationEventGetUserLocation();

  @override
  String toString() {
    return 'LocationEvent.getInitialUserLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LocationEventGetUserLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result getInitialUserLocation(),
    @required Result updateUserLocation(double latitude, double longitude),
  }) {
    assert(init != null);
    assert(getInitialUserLocation != null);
    assert(updateUserLocation != null);
    return getInitialUserLocation();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result getInitialUserLocation(),
    Result updateUserLocation(double latitude, double longitude),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getInitialUserLocation != null) {
      return getInitialUserLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(LocationEventInit value),
    @required Result getInitialUserLocation(LocationEventGetUserLocation value),
    @required Result updateUserLocation(LocationEventUpdateUserLocation value),
  }) {
    assert(init != null);
    assert(getInitialUserLocation != null);
    assert(updateUserLocation != null);
    return getInitialUserLocation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(LocationEventInit value),
    Result getInitialUserLocation(LocationEventGetUserLocation value),
    Result updateUserLocation(LocationEventUpdateUserLocation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getInitialUserLocation != null) {
      return getInitialUserLocation(this);
    }
    return orElse();
  }
}

abstract class LocationEventGetUserLocation implements LocationEvent {
  const factory LocationEventGetUserLocation() = _$LocationEventGetUserLocation;
}

abstract class $LocationEventUpdateUserLocationCopyWith<$Res> {
  factory $LocationEventUpdateUserLocationCopyWith(
          LocationEventUpdateUserLocation value,
          $Res Function(LocationEventUpdateUserLocation) then) =
      _$LocationEventUpdateUserLocationCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

class _$LocationEventUpdateUserLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventUpdateUserLocationCopyWith<$Res> {
  _$LocationEventUpdateUserLocationCopyWithImpl(
      LocationEventUpdateUserLocation _value,
      $Res Function(LocationEventUpdateUserLocation) _then)
      : super(_value, (v) => _then(v as LocationEventUpdateUserLocation));

  @override
  LocationEventUpdateUserLocation get _value =>
      super._value as LocationEventUpdateUserLocation;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(LocationEventUpdateUserLocation(
      latitude == freezed ? _value.latitude : latitude as double,
      longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

class _$LocationEventUpdateUserLocation
    implements LocationEventUpdateUserLocation {
  const _$LocationEventUpdateUserLocation(this.latitude, this.longitude)
      : assert(latitude != null),
        assert(longitude != null);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'LocationEvent.updateUserLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationEventUpdateUserLocation &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @override
  $LocationEventUpdateUserLocationCopyWith<LocationEventUpdateUserLocation>
      get copyWith => _$LocationEventUpdateUserLocationCopyWithImpl<
          LocationEventUpdateUserLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result getInitialUserLocation(),
    @required Result updateUserLocation(double latitude, double longitude),
  }) {
    assert(init != null);
    assert(getInitialUserLocation != null);
    assert(updateUserLocation != null);
    return updateUserLocation(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result getInitialUserLocation(),
    Result updateUserLocation(double latitude, double longitude),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateUserLocation != null) {
      return updateUserLocation(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(LocationEventInit value),
    @required Result getInitialUserLocation(LocationEventGetUserLocation value),
    @required Result updateUserLocation(LocationEventUpdateUserLocation value),
  }) {
    assert(init != null);
    assert(getInitialUserLocation != null);
    assert(updateUserLocation != null);
    return updateUserLocation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(LocationEventInit value),
    Result getInitialUserLocation(LocationEventGetUserLocation value),
    Result updateUserLocation(LocationEventUpdateUserLocation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateUserLocation != null) {
      return updateUserLocation(this);
    }
    return orElse();
  }
}

abstract class LocationEventUpdateUserLocation implements LocationEvent {
  const factory LocationEventUpdateUserLocation(
      double latitude, double longitude) = _$LocationEventUpdateUserLocation;

  double get latitude;
  double get longitude;
  $LocationEventUpdateUserLocationCopyWith<LocationEventUpdateUserLocation>
      get copyWith;
}

class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _LocationState call({GeoFirePoint geoFirePoint, Placemark placeMark}) {
    return _LocationState(
      geoFirePoint: geoFirePoint,
      placeMark: placeMark,
    );
  }
}

// ignore: unused_element
const $LocationState = _$LocationStateTearOff();

mixin _$LocationState {
  GeoFirePoint get geoFirePoint;
  Placemark get placeMark;

  $LocationStateCopyWith<LocationState> get copyWith;
}

abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
  $Res call({GeoFirePoint geoFirePoint, Placemark placeMark});
}

class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;

  @override
  $Res call({
    Object geoFirePoint = freezed,
    Object placeMark = freezed,
  }) {
    return _then(_value.copyWith(
      geoFirePoint: geoFirePoint == freezed
          ? _value.geoFirePoint
          : geoFirePoint as GeoFirePoint,
      placeMark:
          placeMark == freezed ? _value.placeMark : placeMark as Placemark,
    ));
  }
}

abstract class _$LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$LocationStateCopyWith(
          _LocationState value, $Res Function(_LocationState) then) =
      __$LocationStateCopyWithImpl<$Res>;
  @override
  $Res call({GeoFirePoint geoFirePoint, Placemark placeMark});
}

class __$LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateCopyWith<$Res> {
  __$LocationStateCopyWithImpl(
      _LocationState _value, $Res Function(_LocationState) _then)
      : super(_value, (v) => _then(v as _LocationState));

  @override
  _LocationState get _value => super._value as _LocationState;

  @override
  $Res call({
    Object geoFirePoint = freezed,
    Object placeMark = freezed,
  }) {
    return _then(_LocationState(
      geoFirePoint: geoFirePoint == freezed
          ? _value.geoFirePoint
          : geoFirePoint as GeoFirePoint,
      placeMark:
          placeMark == freezed ? _value.placeMark : placeMark as Placemark,
    ));
  }
}

class _$_LocationState implements _LocationState {
  const _$_LocationState({this.geoFirePoint, this.placeMark});

  @override
  final GeoFirePoint geoFirePoint;
  @override
  final Placemark placeMark;

  @override
  String toString() {
    return 'LocationState(geoFirePoint: $geoFirePoint, placeMark: $placeMark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationState &&
            (identical(other.geoFirePoint, geoFirePoint) ||
                const DeepCollectionEquality()
                    .equals(other.geoFirePoint, geoFirePoint)) &&
            (identical(other.placeMark, placeMark) ||
                const DeepCollectionEquality()
                    .equals(other.placeMark, placeMark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(geoFirePoint) ^
      const DeepCollectionEquality().hash(placeMark);

  @override
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {GeoFirePoint geoFirePoint, Placemark placeMark}) = _$_LocationState;

  @override
  GeoFirePoint get geoFirePoint;
  @override
  Placemark get placeMark;
  @override
  _$LocationStateCopyWith<_LocationState> get copyWith;
}
