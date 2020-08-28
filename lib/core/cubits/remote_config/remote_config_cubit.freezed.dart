// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'remote_config_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RemoteConfigStateTearOff {
  const _$RemoteConfigStateTearOff();

// ignore: unused_element
  _RemoteConfigState call(
      {@required String firebaseApiKey,
      @required String algoliaAppId,
      @required String algoliaSearchApiKey,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      String info}) {
    return _RemoteConfigState(
      firebaseApiKey: firebaseApiKey,
      algoliaAppId: algoliaAppId,
      algoliaSearchApiKey: algoliaSearchApiKey,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $RemoteConfigState = _$RemoteConfigStateTearOff();

mixin _$RemoteConfigState {
  String get firebaseApiKey;
  String get algoliaAppId;
  String get algoliaSearchApiKey;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $RemoteConfigStateCopyWith<RemoteConfigState> get copyWith;
}

abstract class $RemoteConfigStateCopyWith<$Res> {
  factory $RemoteConfigStateCopyWith(
          RemoteConfigState value, $Res Function(RemoteConfigState) then) =
      _$RemoteConfigStateCopyWithImpl<$Res>;
  $Res call(
      {String firebaseApiKey,
      String algoliaAppId,
      String algoliaSearchApiKey,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$RemoteConfigStateCopyWithImpl<$Res>
    implements $RemoteConfigStateCopyWith<$Res> {
  _$RemoteConfigStateCopyWithImpl(this._value, this._then);

  final RemoteConfigState _value;
  // ignore: unused_field
  final $Res Function(RemoteConfigState) _then;

  @override
  $Res call({
    Object firebaseApiKey = freezed,
    Object algoliaAppId = freezed,
    Object algoliaSearchApiKey = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      firebaseApiKey: firebaseApiKey == freezed
          ? _value.firebaseApiKey
          : firebaseApiKey as String,
      algoliaAppId: algoliaAppId == freezed
          ? _value.algoliaAppId
          : algoliaAppId as String,
      algoliaSearchApiKey: algoliaSearchApiKey == freezed
          ? _value.algoliaSearchApiKey
          : algoliaSearchApiKey as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$RemoteConfigStateCopyWith<$Res>
    implements $RemoteConfigStateCopyWith<$Res> {
  factory _$RemoteConfigStateCopyWith(
          _RemoteConfigState value, $Res Function(_RemoteConfigState) then) =
      __$RemoteConfigStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firebaseApiKey,
      String algoliaAppId,
      String algoliaSearchApiKey,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$RemoteConfigStateCopyWithImpl<$Res>
    extends _$RemoteConfigStateCopyWithImpl<$Res>
    implements _$RemoteConfigStateCopyWith<$Res> {
  __$RemoteConfigStateCopyWithImpl(
      _RemoteConfigState _value, $Res Function(_RemoteConfigState) _then)
      : super(_value, (v) => _then(v as _RemoteConfigState));

  @override
  _RemoteConfigState get _value => super._value as _RemoteConfigState;

  @override
  $Res call({
    Object firebaseApiKey = freezed,
    Object algoliaAppId = freezed,
    Object algoliaSearchApiKey = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_RemoteConfigState(
      firebaseApiKey: firebaseApiKey == freezed
          ? _value.firebaseApiKey
          : firebaseApiKey as String,
      algoliaAppId: algoliaAppId == freezed
          ? _value.algoliaAppId
          : algoliaAppId as String,
      algoliaSearchApiKey: algoliaSearchApiKey == freezed
          ? _value.algoliaSearchApiKey
          : algoliaSearchApiKey as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_RemoteConfigState
    with DiagnosticableTreeMixin
    implements _RemoteConfigState {
  const _$_RemoteConfigState(
      {@required this.firebaseApiKey,
      @required this.algoliaAppId,
      @required this.algoliaSearchApiKey,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      this.info})
      : assert(firebaseApiKey != null),
        assert(algoliaAppId != null),
        assert(algoliaSearchApiKey != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null);

  @override
  final String firebaseApiKey;
  @override
  final String algoliaAppId;
  @override
  final String algoliaSearchApiKey;
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
    return 'RemoteConfigState(firebaseApiKey: $firebaseApiKey, algoliaAppId: $algoliaAppId, algoliaSearchApiKey: $algoliaSearchApiKey, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RemoteConfigState'))
      ..add(DiagnosticsProperty('firebaseApiKey', firebaseApiKey))
      ..add(DiagnosticsProperty('algoliaAppId', algoliaAppId))
      ..add(DiagnosticsProperty('algoliaSearchApiKey', algoliaSearchApiKey))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('isFailure', isFailure))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoteConfigState &&
            (identical(other.firebaseApiKey, firebaseApiKey) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseApiKey, firebaseApiKey)) &&
            (identical(other.algoliaAppId, algoliaAppId) ||
                const DeepCollectionEquality()
                    .equals(other.algoliaAppId, algoliaAppId)) &&
            (identical(other.algoliaSearchApiKey, algoliaSearchApiKey) ||
                const DeepCollectionEquality()
                    .equals(other.algoliaSearchApiKey, algoliaSearchApiKey)) &&
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
      const DeepCollectionEquality().hash(firebaseApiKey) ^
      const DeepCollectionEquality().hash(algoliaAppId) ^
      const DeepCollectionEquality().hash(algoliaSearchApiKey) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$RemoteConfigStateCopyWith<_RemoteConfigState> get copyWith =>
      __$RemoteConfigStateCopyWithImpl<_RemoteConfigState>(this, _$identity);
}

abstract class _RemoteConfigState implements RemoteConfigState {
  const factory _RemoteConfigState(
      {@required String firebaseApiKey,
      @required String algoliaAppId,
      @required String algoliaSearchApiKey,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      String info}) = _$_RemoteConfigState;

  @override
  String get firebaseApiKey;
  @override
  String get algoliaAppId;
  @override
  String get algoliaSearchApiKey;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$RemoteConfigStateCopyWith<_RemoteConfigState> get copyWith;
}
