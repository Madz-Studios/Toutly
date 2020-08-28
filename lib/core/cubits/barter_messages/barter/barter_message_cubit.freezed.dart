// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'barter_message_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BarterMessageStateTearOff {
  const _$BarterMessageStateTearOff();

// ignore: unused_element
  _BarterMessageState call(
      {@required Stream<QuerySnapshot> barterMessages,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _BarterMessageState(
      barterMessages: barterMessages,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $BarterMessageState = _$BarterMessageStateTearOff();

mixin _$BarterMessageState {
  Stream<QuerySnapshot> get barterMessages;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $BarterMessageStateCopyWith<BarterMessageState> get copyWith;
}

abstract class $BarterMessageStateCopyWith<$Res> {
  factory $BarterMessageStateCopyWith(
          BarterMessageState value, $Res Function(BarterMessageState) then) =
      _$BarterMessageStateCopyWithImpl<$Res>;
  $Res call(
      {Stream<QuerySnapshot> barterMessages,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$BarterMessageStateCopyWithImpl<$Res>
    implements $BarterMessageStateCopyWith<$Res> {
  _$BarterMessageStateCopyWithImpl(this._value, this._then);

  final BarterMessageState _value;
  // ignore: unused_field
  final $Res Function(BarterMessageState) _then;

  @override
  $Res call({
    Object barterMessages = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      barterMessages: barterMessages == freezed
          ? _value.barterMessages
          : barterMessages as Stream<QuerySnapshot>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$BarterMessageStateCopyWith<$Res>
    implements $BarterMessageStateCopyWith<$Res> {
  factory _$BarterMessageStateCopyWith(
          _BarterMessageState value, $Res Function(_BarterMessageState) then) =
      __$BarterMessageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Stream<QuerySnapshot> barterMessages,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$BarterMessageStateCopyWithImpl<$Res>
    extends _$BarterMessageStateCopyWithImpl<$Res>
    implements _$BarterMessageStateCopyWith<$Res> {
  __$BarterMessageStateCopyWithImpl(
      _BarterMessageState _value, $Res Function(_BarterMessageState) _then)
      : super(_value, (v) => _then(v as _BarterMessageState));

  @override
  _BarterMessageState get _value => super._value as _BarterMessageState;

  @override
  $Res call({
    Object barterMessages = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_BarterMessageState(
      barterMessages: barterMessages == freezed
          ? _value.barterMessages
          : barterMessages as Stream<QuerySnapshot>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_BarterMessageState implements _BarterMessageState {
  const _$_BarterMessageState(
      {@required this.barterMessages,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(barterMessages != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

  @override
  final Stream<QuerySnapshot> barterMessages;
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
    return 'BarterMessageState(barterMessages: $barterMessages, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BarterMessageState &&
            (identical(other.barterMessages, barterMessages) ||
                const DeepCollectionEquality()
                    .equals(other.barterMessages, barterMessages)) &&
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
      const DeepCollectionEquality().hash(barterMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$BarterMessageStateCopyWith<_BarterMessageState> get copyWith =>
      __$BarterMessageStateCopyWithImpl<_BarterMessageState>(this, _$identity);
}

abstract class _BarterMessageState implements BarterMessageState {
  const factory _BarterMessageState(
      {@required Stream<QuerySnapshot> barterMessages,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_BarterMessageState;

  @override
  Stream<QuerySnapshot> get barterMessages;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$BarterMessageStateCopyWith<_BarterMessageState> get copyWith;
}
