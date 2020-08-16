// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'make_offer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MakeOfferStateTearOff {
  const _$MakeOfferStateTearOff();

  _MakeOfferState call(
      {@required Map<String, BarterModel> pickedBarterItems,
      @required bool isMessageValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _MakeOfferState(
      pickedBarterItems: pickedBarterItems,
      isMessageValid: isMessageValid,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $MakeOfferState = _$MakeOfferStateTearOff();

mixin _$MakeOfferState {
  Map<String, BarterModel> get pickedBarterItems;
  bool get isMessageValid;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $MakeOfferStateCopyWith<MakeOfferState> get copyWith;
}

abstract class $MakeOfferStateCopyWith<$Res> {
  factory $MakeOfferStateCopyWith(
          MakeOfferState value, $Res Function(MakeOfferState) then) =
      _$MakeOfferStateCopyWithImpl<$Res>;
  $Res call(
      {Map<String, BarterModel> pickedBarterItems,
      bool isMessageValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$MakeOfferStateCopyWithImpl<$Res>
    implements $MakeOfferStateCopyWith<$Res> {
  _$MakeOfferStateCopyWithImpl(this._value, this._then);

  final MakeOfferState _value;
  // ignore: unused_field
  final $Res Function(MakeOfferState) _then;

  @override
  $Res call({
    Object pickedBarterItems = freezed,
    Object isMessageValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      pickedBarterItems: pickedBarterItems == freezed
          ? _value.pickedBarterItems
          : pickedBarterItems as Map<String, BarterModel>,
      isMessageValid: isMessageValid == freezed
          ? _value.isMessageValid
          : isMessageValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$MakeOfferStateCopyWith<$Res>
    implements $MakeOfferStateCopyWith<$Res> {
  factory _$MakeOfferStateCopyWith(
          _MakeOfferState value, $Res Function(_MakeOfferState) then) =
      __$MakeOfferStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, BarterModel> pickedBarterItems,
      bool isMessageValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$MakeOfferStateCopyWithImpl<$Res>
    extends _$MakeOfferStateCopyWithImpl<$Res>
    implements _$MakeOfferStateCopyWith<$Res> {
  __$MakeOfferStateCopyWithImpl(
      _MakeOfferState _value, $Res Function(_MakeOfferState) _then)
      : super(_value, (v) => _then(v as _MakeOfferState));

  @override
  _MakeOfferState get _value => super._value as _MakeOfferState;

  @override
  $Res call({
    Object pickedBarterItems = freezed,
    Object isMessageValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_MakeOfferState(
      pickedBarterItems: pickedBarterItems == freezed
          ? _value.pickedBarterItems
          : pickedBarterItems as Map<String, BarterModel>,
      isMessageValid: isMessageValid == freezed
          ? _value.isMessageValid
          : isMessageValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_MakeOfferState extends _MakeOfferState {
  const _$_MakeOfferState(
      {@required this.pickedBarterItems,
      @required this.isMessageValid,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(pickedBarterItems != null),
        assert(isMessageValid != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null),
        super._();

  @override
  final Map<String, BarterModel> pickedBarterItems;
  @override
  final bool isMessageValid;
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
    return 'MakeOfferState(pickedBarterItems: $pickedBarterItems, isMessageValid: $isMessageValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MakeOfferState &&
            (identical(other.pickedBarterItems, pickedBarterItems) ||
                const DeepCollectionEquality()
                    .equals(other.pickedBarterItems, pickedBarterItems)) &&
            (identical(other.isMessageValid, isMessageValid) ||
                const DeepCollectionEquality()
                    .equals(other.isMessageValid, isMessageValid)) &&
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
      const DeepCollectionEquality().hash(pickedBarterItems) ^
      const DeepCollectionEquality().hash(isMessageValid) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$MakeOfferStateCopyWith<_MakeOfferState> get copyWith =>
      __$MakeOfferStateCopyWithImpl<_MakeOfferState>(this, _$identity);
}

abstract class _MakeOfferState extends MakeOfferState {
  const _MakeOfferState._() : super._();
  const factory _MakeOfferState(
      {@required Map<String, BarterModel> pickedBarterItems,
      @required bool isMessageValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_MakeOfferState;

  @override
  Map<String, BarterModel> get pickedBarterItems;
  @override
  bool get isMessageValid;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$MakeOfferStateCopyWith<_MakeOfferState> get copyWith;
}
