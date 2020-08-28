// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'barter_items_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BarterItemsStateTearOff {
  const _$BarterItemsStateTearOff();

// ignore: unused_element
  _BarterItemsState call(
      {BarterModel barterItem,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _BarterItemsState(
      barterItem: barterItem,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $BarterItemsState = _$BarterItemsStateTearOff();

mixin _$BarterItemsState {
  BarterModel get barterItem;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $BarterItemsStateCopyWith<BarterItemsState> get copyWith;
}

abstract class $BarterItemsStateCopyWith<$Res> {
  factory $BarterItemsStateCopyWith(
          BarterItemsState value, $Res Function(BarterItemsState) then) =
      _$BarterItemsStateCopyWithImpl<$Res>;
  $Res call(
      {BarterModel barterItem,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$BarterItemsStateCopyWithImpl<$Res>
    implements $BarterItemsStateCopyWith<$Res> {
  _$BarterItemsStateCopyWithImpl(this._value, this._then);

  final BarterItemsState _value;
  // ignore: unused_field
  final $Res Function(BarterItemsState) _then;

  @override
  $Res call({
    Object barterItem = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      barterItem:
          barterItem == freezed ? _value.barterItem : barterItem as BarterModel,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$BarterItemsStateCopyWith<$Res>
    implements $BarterItemsStateCopyWith<$Res> {
  factory _$BarterItemsStateCopyWith(
          _BarterItemsState value, $Res Function(_BarterItemsState) then) =
      __$BarterItemsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BarterModel barterItem,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$BarterItemsStateCopyWithImpl<$Res>
    extends _$BarterItemsStateCopyWithImpl<$Res>
    implements _$BarterItemsStateCopyWith<$Res> {
  __$BarterItemsStateCopyWithImpl(
      _BarterItemsState _value, $Res Function(_BarterItemsState) _then)
      : super(_value, (v) => _then(v as _BarterItemsState));

  @override
  _BarterItemsState get _value => super._value as _BarterItemsState;

  @override
  $Res call({
    Object barterItem = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_BarterItemsState(
      barterItem:
          barterItem == freezed ? _value.barterItem : barterItem as BarterModel,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_BarterItemsState implements _BarterItemsState {
  const _$_BarterItemsState(
      {this.barterItem,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

  @override
  final BarterModel barterItem;
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
    return 'BarterItemsState(barterItem: $barterItem, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BarterItemsState &&
            (identical(other.barterItem, barterItem) ||
                const DeepCollectionEquality()
                    .equals(other.barterItem, barterItem)) &&
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
      const DeepCollectionEquality().hash(barterItem) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$BarterItemsStateCopyWith<_BarterItemsState> get copyWith =>
      __$BarterItemsStateCopyWithImpl<_BarterItemsState>(this, _$identity);
}

abstract class _BarterItemsState implements BarterItemsState {
  const factory _BarterItemsState(
      {BarterModel barterItem,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_BarterItemsState;

  @override
  BarterModel get barterItem;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$BarterItemsStateCopyWith<_BarterItemsState> get copyWith;
}
