// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'private_list_barter_model_current_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PrivateListBarterModelCurrentUserStateTearOff {
  const _$PrivateListBarterModelCurrentUserStateTearOff();

// ignore: unused_element
  _PrivateListBarterModelCurrentUserState call(
      {@required Stream<QuerySnapshot> userBarterItems,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _PrivateListBarterModelCurrentUserState(
      userBarterItems: userBarterItems,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $PrivateListBarterModelCurrentUserState =
    _$PrivateListBarterModelCurrentUserStateTearOff();

mixin _$PrivateListBarterModelCurrentUserState {
  Stream<QuerySnapshot> get userBarterItems;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $PrivateListBarterModelCurrentUserStateCopyWith<
      PrivateListBarterModelCurrentUserState> get copyWith;
}

abstract class $PrivateListBarterModelCurrentUserStateCopyWith<$Res> {
  factory $PrivateListBarterModelCurrentUserStateCopyWith(
          PrivateListBarterModelCurrentUserState value,
          $Res Function(PrivateListBarterModelCurrentUserState) then) =
      _$PrivateListBarterModelCurrentUserStateCopyWithImpl<$Res>;
  $Res call(
      {Stream<QuerySnapshot> userBarterItems,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$PrivateListBarterModelCurrentUserStateCopyWithImpl<$Res>
    implements $PrivateListBarterModelCurrentUserStateCopyWith<$Res> {
  _$PrivateListBarterModelCurrentUserStateCopyWithImpl(this._value, this._then);

  final PrivateListBarterModelCurrentUserState _value;
  // ignore: unused_field
  final $Res Function(PrivateListBarterModelCurrentUserState) _then;

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

abstract class _$PrivateListBarterModelCurrentUserStateCopyWith<$Res>
    implements $PrivateListBarterModelCurrentUserStateCopyWith<$Res> {
  factory _$PrivateListBarterModelCurrentUserStateCopyWith(
          _PrivateListBarterModelCurrentUserState value,
          $Res Function(_PrivateListBarterModelCurrentUserState) then) =
      __$PrivateListBarterModelCurrentUserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Stream<QuerySnapshot> userBarterItems,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$PrivateListBarterModelCurrentUserStateCopyWithImpl<$Res>
    extends _$PrivateListBarterModelCurrentUserStateCopyWithImpl<$Res>
    implements _$PrivateListBarterModelCurrentUserStateCopyWith<$Res> {
  __$PrivateListBarterModelCurrentUserStateCopyWithImpl(
      _PrivateListBarterModelCurrentUserState _value,
      $Res Function(_PrivateListBarterModelCurrentUserState) _then)
      : super(
            _value, (v) => _then(v as _PrivateListBarterModelCurrentUserState));

  @override
  _PrivateListBarterModelCurrentUserState get _value =>
      super._value as _PrivateListBarterModelCurrentUserState;

  @override
  $Res call({
    Object userBarterItems = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_PrivateListBarterModelCurrentUserState(
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

class _$_PrivateListBarterModelCurrentUserState
    with DiagnosticableTreeMixin
    implements _PrivateListBarterModelCurrentUserState {
  const _$_PrivateListBarterModelCurrentUserState(
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PrivateListBarterModelCurrentUserState(userBarterItems: $userBarterItems, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PrivateListBarterModelCurrentUserState'))
      ..add(DiagnosticsProperty('userBarterItems', userBarterItems))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('isFailure', isFailure))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrivateListBarterModelCurrentUserState &&
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
  _$PrivateListBarterModelCurrentUserStateCopyWith<
          _PrivateListBarterModelCurrentUserState>
      get copyWith => __$PrivateListBarterModelCurrentUserStateCopyWithImpl<
          _PrivateListBarterModelCurrentUserState>(this, _$identity);
}

abstract class _PrivateListBarterModelCurrentUserState
    implements PrivateListBarterModelCurrentUserState {
  const factory _PrivateListBarterModelCurrentUserState(
      {@required Stream<QuerySnapshot> userBarterItems,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_PrivateListBarterModelCurrentUserState;

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
  _$PrivateListBarterModelCurrentUserStateCopyWith<
      _PrivateListBarterModelCurrentUserState> get copyWith;
}
