// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'public_list_barter_model_current_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PublicListBarterModelCurrentUserStateTearOff {
  const _$PublicListBarterModelCurrentUserStateTearOff();

// ignore: unused_element
  _PublicListBarterModelCurrentUserState call(
      {@required Stream<QuerySnapshot> userBarterItems,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _PublicListBarterModelCurrentUserState(
      userBarterItems: userBarterItems,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $PublicListBarterModelCurrentUserState =
    _$PublicListBarterModelCurrentUserStateTearOff();

mixin _$PublicListBarterModelCurrentUserState {
  Stream<QuerySnapshot> get userBarterItems;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $PublicListBarterModelCurrentUserStateCopyWith<
      PublicListBarterModelCurrentUserState> get copyWith;
}

abstract class $PublicListBarterModelCurrentUserStateCopyWith<$Res> {
  factory $PublicListBarterModelCurrentUserStateCopyWith(
          PublicListBarterModelCurrentUserState value,
          $Res Function(PublicListBarterModelCurrentUserState) then) =
      _$PublicListBarterModelCurrentUserStateCopyWithImpl<$Res>;
  $Res call(
      {Stream<QuerySnapshot> userBarterItems,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$PublicListBarterModelCurrentUserStateCopyWithImpl<$Res>
    implements $PublicListBarterModelCurrentUserStateCopyWith<$Res> {
  _$PublicListBarterModelCurrentUserStateCopyWithImpl(this._value, this._then);

  final PublicListBarterModelCurrentUserState _value;
  // ignore: unused_field
  final $Res Function(PublicListBarterModelCurrentUserState) _then;

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

abstract class _$PublicListBarterModelCurrentUserStateCopyWith<$Res>
    implements $PublicListBarterModelCurrentUserStateCopyWith<$Res> {
  factory _$PublicListBarterModelCurrentUserStateCopyWith(
          _PublicListBarterModelCurrentUserState value,
          $Res Function(_PublicListBarterModelCurrentUserState) then) =
      __$PublicListBarterModelCurrentUserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Stream<QuerySnapshot> userBarterItems,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$PublicListBarterModelCurrentUserStateCopyWithImpl<$Res>
    extends _$PublicListBarterModelCurrentUserStateCopyWithImpl<$Res>
    implements _$PublicListBarterModelCurrentUserStateCopyWith<$Res> {
  __$PublicListBarterModelCurrentUserStateCopyWithImpl(
      _PublicListBarterModelCurrentUserState _value,
      $Res Function(_PublicListBarterModelCurrentUserState) _then)
      : super(
            _value, (v) => _then(v as _PublicListBarterModelCurrentUserState));

  @override
  _PublicListBarterModelCurrentUserState get _value =>
      super._value as _PublicListBarterModelCurrentUserState;

  @override
  $Res call({
    Object userBarterItems = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_PublicListBarterModelCurrentUserState(
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

class _$_PublicListBarterModelCurrentUserState
    implements _PublicListBarterModelCurrentUserState {
  const _$_PublicListBarterModelCurrentUserState(
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
    return 'PublicListBarterModelCurrentUserState(userBarterItems: $userBarterItems, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PublicListBarterModelCurrentUserState &&
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
  _$PublicListBarterModelCurrentUserStateCopyWith<
          _PublicListBarterModelCurrentUserState>
      get copyWith => __$PublicListBarterModelCurrentUserStateCopyWithImpl<
          _PublicListBarterModelCurrentUserState>(this, _$identity);
}

abstract class _PublicListBarterModelCurrentUserState
    implements PublicListBarterModelCurrentUserState {
  const factory _PublicListBarterModelCurrentUserState(
      {@required Stream<QuerySnapshot> userBarterItems,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_PublicListBarterModelCurrentUserState;

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
  _$PublicListBarterModelCurrentUserStateCopyWith<
      _PublicListBarterModelCurrentUserState> get copyWith;
}
