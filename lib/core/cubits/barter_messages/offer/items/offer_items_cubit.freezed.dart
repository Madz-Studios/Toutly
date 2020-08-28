// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'offer_items_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OfferItemsStateTearOff {
  const _$OfferItemsStateTearOff();

// ignore: unused_element
  _OfferItemsState call(
      {@required List<BarterModel> offerItems,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _OfferItemsState(
      offerItems: offerItems,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $OfferItemsState = _$OfferItemsStateTearOff();

mixin _$OfferItemsState {
  List<BarterModel> get offerItems;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $OfferItemsStateCopyWith<OfferItemsState> get copyWith;
}

abstract class $OfferItemsStateCopyWith<$Res> {
  factory $OfferItemsStateCopyWith(
          OfferItemsState value, $Res Function(OfferItemsState) then) =
      _$OfferItemsStateCopyWithImpl<$Res>;
  $Res call(
      {List<BarterModel> offerItems,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$OfferItemsStateCopyWithImpl<$Res>
    implements $OfferItemsStateCopyWith<$Res> {
  _$OfferItemsStateCopyWithImpl(this._value, this._then);

  final OfferItemsState _value;
  // ignore: unused_field
  final $Res Function(OfferItemsState) _then;

  @override
  $Res call({
    Object offerItems = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      offerItems: offerItems == freezed
          ? _value.offerItems
          : offerItems as List<BarterModel>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$OfferItemsStateCopyWith<$Res>
    implements $OfferItemsStateCopyWith<$Res> {
  factory _$OfferItemsStateCopyWith(
          _OfferItemsState value, $Res Function(_OfferItemsState) then) =
      __$OfferItemsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<BarterModel> offerItems,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$OfferItemsStateCopyWithImpl<$Res>
    extends _$OfferItemsStateCopyWithImpl<$Res>
    implements _$OfferItemsStateCopyWith<$Res> {
  __$OfferItemsStateCopyWithImpl(
      _OfferItemsState _value, $Res Function(_OfferItemsState) _then)
      : super(_value, (v) => _then(v as _OfferItemsState));

  @override
  _OfferItemsState get _value => super._value as _OfferItemsState;

  @override
  $Res call({
    Object offerItems = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_OfferItemsState(
      offerItems: offerItems == freezed
          ? _value.offerItems
          : offerItems as List<BarterModel>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_OfferItemsState implements _OfferItemsState {
  const _$_OfferItemsState(
      {@required this.offerItems,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(offerItems != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

  @override
  final List<BarterModel> offerItems;
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
    return 'OfferItemsState(offerItems: $offerItems, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OfferItemsState &&
            (identical(other.offerItems, offerItems) ||
                const DeepCollectionEquality()
                    .equals(other.offerItems, offerItems)) &&
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
      const DeepCollectionEquality().hash(offerItems) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$OfferItemsStateCopyWith<_OfferItemsState> get copyWith =>
      __$OfferItemsStateCopyWithImpl<_OfferItemsState>(this, _$identity);
}

abstract class _OfferItemsState implements OfferItemsState {
  const factory _OfferItemsState(
      {@required List<BarterModel> offerItems,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_OfferItemsState;

  @override
  List<BarterModel> get offerItems;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$OfferItemsStateCopyWith<_OfferItemsState> get copyWith;
}
