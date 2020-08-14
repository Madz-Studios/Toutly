// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'barter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BarterStateTearOff {
  const _$BarterStateTearOff();

  _BarterState call(
      {@required Stream<QuerySnapshot> userBarterItems,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _BarterState(
      userBarterItems: userBarterItems,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $BarterState = _$BarterStateTearOff();

mixin _$BarterState {
  Stream<QuerySnapshot> get userBarterItems;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $BarterStateCopyWith<BarterState> get copyWith;
}

abstract class $BarterStateCopyWith<$Res> {
  factory $BarterStateCopyWith(
          BarterState value, $Res Function(BarterState) then) =
      _$BarterStateCopyWithImpl<$Res>;
  $Res call(
      {Stream<QuerySnapshot> userBarterItems,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$BarterStateCopyWithImpl<$Res> implements $BarterStateCopyWith<$Res> {
  _$BarterStateCopyWithImpl(this._value, this._then);

  final BarterState _value;
  // ignore: unused_field
  final $Res Function(BarterState) _then;

  @override
  $Res call({
    Object userBarterItems = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      userBarterItems: userBarterItems == freezed
          ? _value.userBarterItems
          : userBarterItems as Stream<QuerySnapshot>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$BarterStateCopyWith<$Res>
    implements $BarterStateCopyWith<$Res> {
  factory _$BarterStateCopyWith(
          _BarterState value, $Res Function(_BarterState) then) =
      __$BarterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Stream<QuerySnapshot> userBarterItems,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$BarterStateCopyWithImpl<$Res> extends _$BarterStateCopyWithImpl<$Res>
    implements _$BarterStateCopyWith<$Res> {
  __$BarterStateCopyWithImpl(
      _BarterState _value, $Res Function(_BarterState) _then)
      : super(_value, (v) => _then(v as _BarterState));

  @override
  _BarterState get _value => super._value as _BarterState;

  @override
  $Res call({
    Object userBarterItems = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_BarterState(
      userBarterItems: userBarterItems == freezed
          ? _value.userBarterItems
          : userBarterItems as Stream<QuerySnapshot>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_BarterState implements _BarterState {
  const _$_BarterState(
      {@required this.userBarterItems,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(userBarterItems != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

  @override
  final Stream<QuerySnapshot> userBarterItems;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;
  @override
  final String info;

  @override
  String toString() {
    return 'BarterState(userBarterItems: $userBarterItems, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BarterState &&
            (identical(other.userBarterItems, userBarterItems) ||
                const DeepCollectionEquality()
                    .equals(other.userBarterItems, userBarterItems)) &&
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
      const DeepCollectionEquality().hash(userBarterItems) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$BarterStateCopyWith<_BarterState> get copyWith =>
      __$BarterStateCopyWithImpl<_BarterState>(this, _$identity);
}

abstract class _BarterState implements BarterState {
  const factory _BarterState(
      {@required Stream<QuerySnapshot> userBarterItems,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_BarterState;

  @override
  Stream<QuerySnapshot> get userBarterItems;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$BarterStateCopyWith<_BarterState> get copyWith;
}
