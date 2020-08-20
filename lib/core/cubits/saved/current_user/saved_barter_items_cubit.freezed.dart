// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'saved_barter_items_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SavedBarterItemsStateTearOff {
  const _$SavedBarterItemsStateTearOff();

  _SavedBarterItemsState call(
      {@required List<BarterModel> listings,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _SavedBarterItemsState(
      listings: listings,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $SavedBarterItemsState = _$SavedBarterItemsStateTearOff();

mixin _$SavedBarterItemsState {
  List<BarterModel> get listings;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $SavedBarterItemsStateCopyWith<SavedBarterItemsState> get copyWith;
}

abstract class $SavedBarterItemsStateCopyWith<$Res> {
  factory $SavedBarterItemsStateCopyWith(SavedBarterItemsState value,
          $Res Function(SavedBarterItemsState) then) =
      _$SavedBarterItemsStateCopyWithImpl<$Res>;
  $Res call(
      {List<BarterModel> listings,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$SavedBarterItemsStateCopyWithImpl<$Res>
    implements $SavedBarterItemsStateCopyWith<$Res> {
  _$SavedBarterItemsStateCopyWithImpl(this._value, this._then);

  final SavedBarterItemsState _value;
  // ignore: unused_field
  final $Res Function(SavedBarterItemsState) _then;

  @override
  $Res call({
    Object listings = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      listings:
          listings == freezed ? _value.listings : listings as List<BarterModel>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$SavedBarterItemsStateCopyWith<$Res>
    implements $SavedBarterItemsStateCopyWith<$Res> {
  factory _$SavedBarterItemsStateCopyWith(_SavedBarterItemsState value,
          $Res Function(_SavedBarterItemsState) then) =
      __$SavedBarterItemsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<BarterModel> listings,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$SavedBarterItemsStateCopyWithImpl<$Res>
    extends _$SavedBarterItemsStateCopyWithImpl<$Res>
    implements _$SavedBarterItemsStateCopyWith<$Res> {
  __$SavedBarterItemsStateCopyWithImpl(_SavedBarterItemsState _value,
      $Res Function(_SavedBarterItemsState) _then)
      : super(_value, (v) => _then(v as _SavedBarterItemsState));

  @override
  _SavedBarterItemsState get _value => super._value as _SavedBarterItemsState;

  @override
  $Res call({
    Object listings = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_SavedBarterItemsState(
      listings:
          listings == freezed ? _value.listings : listings as List<BarterModel>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_SavedBarterItemsState implements _SavedBarterItemsState {
  const _$_SavedBarterItemsState(
      {@required this.listings,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(listings != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

  @override
  final List<BarterModel> listings;
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
    return 'SavedBarterItemsState(listings: $listings, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SavedBarterItemsState &&
            (identical(other.listings, listings) ||
                const DeepCollectionEquality()
                    .equals(other.listings, listings)) &&
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
      const DeepCollectionEquality().hash(listings) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$SavedBarterItemsStateCopyWith<_SavedBarterItemsState> get copyWith =>
      __$SavedBarterItemsStateCopyWithImpl<_SavedBarterItemsState>(
          this, _$identity);
}

abstract class _SavedBarterItemsState implements SavedBarterItemsState {
  const factory _SavedBarterItemsState(
      {@required List<BarterModel> listings,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_SavedBarterItemsState;

  @override
  List<BarterModel> get listings;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$SavedBarterItemsStateCopyWith<_SavedBarterItemsState> get copyWith;
}
