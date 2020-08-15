// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'list_barter_model_current_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ListBarterModelCurrentUserStateTearOff {
  const _$ListBarterModelCurrentUserStateTearOff();

  _ListBarterModelCurrentUserState call(
      {@required Stream<QuerySnapshot> userBarterItems,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _ListBarterModelCurrentUserState(
      userBarterItems: userBarterItems,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $ListBarterModelCurrentUserState =
    _$ListBarterModelCurrentUserStateTearOff();

mixin _$ListBarterModelCurrentUserState {
  Stream<QuerySnapshot> get userBarterItems;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $ListBarterModelCurrentUserStateCopyWith<ListBarterModelCurrentUserState>
      get copyWith;
}

abstract class $ListBarterModelCurrentUserStateCopyWith<$Res> {
  factory $ListBarterModelCurrentUserStateCopyWith(
          ListBarterModelCurrentUserState value,
          $Res Function(ListBarterModelCurrentUserState) then) =
      _$ListBarterModelCurrentUserStateCopyWithImpl<$Res>;
  $Res call(
      {Stream<QuerySnapshot> userBarterItems,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$ListBarterModelCurrentUserStateCopyWithImpl<$Res>
    implements $ListBarterModelCurrentUserStateCopyWith<$Res> {
  _$ListBarterModelCurrentUserStateCopyWithImpl(this._value, this._then);

  final ListBarterModelCurrentUserState _value;
  // ignore: unused_field
  final $Res Function(ListBarterModelCurrentUserState) _then;

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

abstract class _$ListBarterModelCurrentUserStateCopyWith<$Res>
    implements $ListBarterModelCurrentUserStateCopyWith<$Res> {
  factory _$ListBarterModelCurrentUserStateCopyWith(
          _ListBarterModelCurrentUserState value,
          $Res Function(_ListBarterModelCurrentUserState) then) =
      __$ListBarterModelCurrentUserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Stream<QuerySnapshot> userBarterItems,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$ListBarterModelCurrentUserStateCopyWithImpl<$Res>
    extends _$ListBarterModelCurrentUserStateCopyWithImpl<$Res>
    implements _$ListBarterModelCurrentUserStateCopyWith<$Res> {
  __$ListBarterModelCurrentUserStateCopyWithImpl(
      _ListBarterModelCurrentUserState _value,
      $Res Function(_ListBarterModelCurrentUserState) _then)
      : super(_value, (v) => _then(v as _ListBarterModelCurrentUserState));

  @override
  _ListBarterModelCurrentUserState get _value =>
      super._value as _ListBarterModelCurrentUserState;

  @override
  $Res call({
    Object userBarterItems = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_ListBarterModelCurrentUserState(
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

class _$_ListBarterModelCurrentUserState
    implements _ListBarterModelCurrentUserState {
  const _$_ListBarterModelCurrentUserState(
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
    return 'ListBarterModelCurrentUserState(userBarterItems: $userBarterItems, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListBarterModelCurrentUserState &&
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
  _$ListBarterModelCurrentUserStateCopyWith<_ListBarterModelCurrentUserState>
      get copyWith => __$ListBarterModelCurrentUserStateCopyWithImpl<
          _ListBarterModelCurrentUserState>(this, _$identity);
}

abstract class _ListBarterModelCurrentUserState
    implements ListBarterModelCurrentUserState {
  const factory _ListBarterModelCurrentUserState(
      {@required Stream<QuerySnapshot> userBarterItems,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_ListBarterModelCurrentUserState;

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
  _$ListBarterModelCurrentUserStateCopyWith<_ListBarterModelCurrentUserState>
      get copyWith;
}
