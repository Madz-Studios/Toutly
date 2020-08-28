// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'offer_message_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OfferMessageStateTearOff {
  const _$OfferMessageStateTearOff();

// ignore: unused_element
  _OfferMessageState call(
      {@required Stream<QuerySnapshot> offerMessages,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _OfferMessageState(
      offerMessages: offerMessages,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $OfferMessageState = _$OfferMessageStateTearOff();

mixin _$OfferMessageState {
  Stream<QuerySnapshot> get offerMessages;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $OfferMessageStateCopyWith<OfferMessageState> get copyWith;
}

abstract class $OfferMessageStateCopyWith<$Res> {
  factory $OfferMessageStateCopyWith(
          OfferMessageState value, $Res Function(OfferMessageState) then) =
      _$OfferMessageStateCopyWithImpl<$Res>;
  $Res call(
      {Stream<QuerySnapshot> offerMessages,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$OfferMessageStateCopyWithImpl<$Res>
    implements $OfferMessageStateCopyWith<$Res> {
  _$OfferMessageStateCopyWithImpl(this._value, this._then);

  final OfferMessageState _value;
  // ignore: unused_field
  final $Res Function(OfferMessageState) _then;

  @override
  $Res call({
    Object offerMessages = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      offerMessages: offerMessages == freezed
          ? _value.offerMessages
          : offerMessages as Stream<QuerySnapshot>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$OfferMessageStateCopyWith<$Res>
    implements $OfferMessageStateCopyWith<$Res> {
  factory _$OfferMessageStateCopyWith(
          _OfferMessageState value, $Res Function(_OfferMessageState) then) =
      __$OfferMessageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Stream<QuerySnapshot> offerMessages,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$OfferMessageStateCopyWithImpl<$Res>
    extends _$OfferMessageStateCopyWithImpl<$Res>
    implements _$OfferMessageStateCopyWith<$Res> {
  __$OfferMessageStateCopyWithImpl(
      _OfferMessageState _value, $Res Function(_OfferMessageState) _then)
      : super(_value, (v) => _then(v as _OfferMessageState));

  @override
  _OfferMessageState get _value => super._value as _OfferMessageState;

  @override
  $Res call({
    Object offerMessages = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_OfferMessageState(
      offerMessages: offerMessages == freezed
          ? _value.offerMessages
          : offerMessages as Stream<QuerySnapshot>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_OfferMessageState implements _OfferMessageState {
  const _$_OfferMessageState(
      {@required this.offerMessages,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(offerMessages != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

  @override
  final Stream<QuerySnapshot> offerMessages;
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
    return 'OfferMessageState(offerMessages: $offerMessages, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OfferMessageState &&
            (identical(other.offerMessages, offerMessages) ||
                const DeepCollectionEquality()
                    .equals(other.offerMessages, offerMessages)) &&
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
      const DeepCollectionEquality().hash(offerMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$OfferMessageStateCopyWith<_OfferMessageState> get copyWith =>
      __$OfferMessageStateCopyWithImpl<_OfferMessageState>(this, _$identity);
}

abstract class _OfferMessageState implements OfferMessageState {
  const factory _OfferMessageState(
      {@required Stream<QuerySnapshot> offerMessages,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_OfferMessageState;

  @override
  Stream<QuerySnapshot> get offerMessages;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$OfferMessageStateCopyWith<_OfferMessageState> get copyWith;
}
