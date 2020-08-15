// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'location_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _LocationState call(
      {@required GeoPoint geoPoint,
      @required Placemark placeMark,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      String info}) {
    return _LocationState(
      geoPoint: geoPoint,
      placeMark: placeMark,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $LocationState = _$LocationStateTearOff();

mixin _$LocationState {
  GeoPoint get geoPoint;
  Placemark get placeMark;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $LocationStateCopyWith<LocationState> get copyWith;
}

abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
  $Res call(
      {GeoPoint geoPoint,
      Placemark placeMark,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;

  @override
  $Res call({
    Object geoPoint = freezed,
    Object placeMark = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      geoPoint: geoPoint == freezed ? _value.geoPoint : geoPoint as GeoPoint,
      placeMark:
          placeMark == freezed ? _value.placeMark : placeMark as Placemark,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$LocationStateCopyWith(
          _LocationState value, $Res Function(_LocationState) then) =
      __$LocationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {GeoPoint geoPoint,
      Placemark placeMark,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
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
    Object geoPoint = freezed,
    Object placeMark = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_LocationState(
      geoPoint: geoPoint == freezed ? _value.geoPoint : geoPoint as GeoPoint,
      placeMark:
          placeMark == freezed ? _value.placeMark : placeMark as Placemark,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_LocationState with DiagnosticableTreeMixin implements _LocationState {
  const _$_LocationState(
      {@required this.geoPoint,
      @required this.placeMark,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      this.info})
      : assert(geoPoint != null),
        assert(placeMark != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null);

  @override
  final GeoPoint geoPoint;
  @override
  final Placemark placeMark;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;
  @override
  final String info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState(geoPoint: $geoPoint, placeMark: $placeMark, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationState'))
      ..add(DiagnosticsProperty('geoPoint', geoPoint))
      ..add(DiagnosticsProperty('placeMark', placeMark))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('isFailure', isFailure))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationState &&
            (identical(other.geoPoint, geoPoint) ||
                const DeepCollectionEquality()
                    .equals(other.geoPoint, geoPoint)) &&
            (identical(other.placeMark, placeMark) ||
                const DeepCollectionEquality()
                    .equals(other.placeMark, placeMark)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.isFailure, isFailure) ||
                const DeepCollectionEquality()
                    .equals(other.isFailure, isFailure)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(geoPoint) ^
      const DeepCollectionEquality().hash(placeMark) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {@required GeoPoint geoPoint,
      @required Placemark placeMark,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      String info}) = _$_LocationState;

  @override
  GeoPoint get geoPoint;
  @override
  Placemark get placeMark;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$LocationStateCopyWith<_LocationState> get copyWith;
}
