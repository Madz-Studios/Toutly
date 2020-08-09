// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'likes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LikesEventTearOff {
  const _$LikesEventTearOff();

  LikesEventInitial initial() {
    return const LikesEventInitial();
  }

  LikesEventGetAllUserFavouriteBarterItems getAllUserFavouriteBarterItems(
      List<String> itemIds) {
    return LikesEventGetAllUserFavouriteBarterItems(
      itemIds,
    );
  }
}

// ignore: unused_element
const $LikesEvent = _$LikesEventTearOff();

mixin _$LikesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result getAllUserFavouriteBarterItems(List<String> itemIds),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getAllUserFavouriteBarterItems(List<String> itemIds),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LikesEventInitial value),
    @required
        Result getAllUserFavouriteBarterItems(
            LikesEventGetAllUserFavouriteBarterItems value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LikesEventInitial value),
    Result getAllUserFavouriteBarterItems(
        LikesEventGetAllUserFavouriteBarterItems value),
    @required Result orElse(),
  });
}

abstract class $LikesEventCopyWith<$Res> {
  factory $LikesEventCopyWith(
          LikesEvent value, $Res Function(LikesEvent) then) =
      _$LikesEventCopyWithImpl<$Res>;
}

class _$LikesEventCopyWithImpl<$Res> implements $LikesEventCopyWith<$Res> {
  _$LikesEventCopyWithImpl(this._value, this._then);

  final LikesEvent _value;
  // ignore: unused_field
  final $Res Function(LikesEvent) _then;
}

abstract class $LikesEventInitialCopyWith<$Res> {
  factory $LikesEventInitialCopyWith(
          LikesEventInitial value, $Res Function(LikesEventInitial) then) =
      _$LikesEventInitialCopyWithImpl<$Res>;
}

class _$LikesEventInitialCopyWithImpl<$Res>
    extends _$LikesEventCopyWithImpl<$Res>
    implements $LikesEventInitialCopyWith<$Res> {
  _$LikesEventInitialCopyWithImpl(
      LikesEventInitial _value, $Res Function(LikesEventInitial) _then)
      : super(_value, (v) => _then(v as LikesEventInitial));

  @override
  LikesEventInitial get _value => super._value as LikesEventInitial;
}

class _$LikesEventInitial implements LikesEventInitial {
  const _$LikesEventInitial();

  @override
  String toString() {
    return 'LikesEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LikesEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result getAllUserFavouriteBarterItems(List<String> itemIds),
  }) {
    assert(initial != null);
    assert(getAllUserFavouriteBarterItems != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getAllUserFavouriteBarterItems(List<String> itemIds),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LikesEventInitial value),
    @required
        Result getAllUserFavouriteBarterItems(
            LikesEventGetAllUserFavouriteBarterItems value),
  }) {
    assert(initial != null);
    assert(getAllUserFavouriteBarterItems != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LikesEventInitial value),
    Result getAllUserFavouriteBarterItems(
        LikesEventGetAllUserFavouriteBarterItems value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LikesEventInitial implements LikesEvent {
  const factory LikesEventInitial() = _$LikesEventInitial;
}

abstract class $LikesEventGetAllUserFavouriteBarterItemsCopyWith<$Res> {
  factory $LikesEventGetAllUserFavouriteBarterItemsCopyWith(
          LikesEventGetAllUserFavouriteBarterItems value,
          $Res Function(LikesEventGetAllUserFavouriteBarterItems) then) =
      _$LikesEventGetAllUserFavouriteBarterItemsCopyWithImpl<$Res>;
  $Res call({List<String> itemIds});
}

class _$LikesEventGetAllUserFavouriteBarterItemsCopyWithImpl<$Res>
    extends _$LikesEventCopyWithImpl<$Res>
    implements $LikesEventGetAllUserFavouriteBarterItemsCopyWith<$Res> {
  _$LikesEventGetAllUserFavouriteBarterItemsCopyWithImpl(
      LikesEventGetAllUserFavouriteBarterItems _value,
      $Res Function(LikesEventGetAllUserFavouriteBarterItems) _then)
      : super(_value,
            (v) => _then(v as LikesEventGetAllUserFavouriteBarterItems));

  @override
  LikesEventGetAllUserFavouriteBarterItems get _value =>
      super._value as LikesEventGetAllUserFavouriteBarterItems;

  @override
  $Res call({
    Object itemIds = freezed,
  }) {
    return _then(LikesEventGetAllUserFavouriteBarterItems(
      itemIds == freezed ? _value.itemIds : itemIds as List<String>,
    ));
  }
}

class _$LikesEventGetAllUserFavouriteBarterItems
    implements LikesEventGetAllUserFavouriteBarterItems {
  const _$LikesEventGetAllUserFavouriteBarterItems(this.itemIds)
      : assert(itemIds != null);

  @override
  final List<String> itemIds;

  @override
  String toString() {
    return 'LikesEvent.getAllUserFavouriteBarterItems(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LikesEventGetAllUserFavouriteBarterItems &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @override
  $LikesEventGetAllUserFavouriteBarterItemsCopyWith<
          LikesEventGetAllUserFavouriteBarterItems>
      get copyWith => _$LikesEventGetAllUserFavouriteBarterItemsCopyWithImpl<
          LikesEventGetAllUserFavouriteBarterItems>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result getAllUserFavouriteBarterItems(List<String> itemIds),
  }) {
    assert(initial != null);
    assert(getAllUserFavouriteBarterItems != null);
    return getAllUserFavouriteBarterItems(itemIds);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result getAllUserFavouriteBarterItems(List<String> itemIds),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllUserFavouriteBarterItems != null) {
      return getAllUserFavouriteBarterItems(itemIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(LikesEventInitial value),
    @required
        Result getAllUserFavouriteBarterItems(
            LikesEventGetAllUserFavouriteBarterItems value),
  }) {
    assert(initial != null);
    assert(getAllUserFavouriteBarterItems != null);
    return getAllUserFavouriteBarterItems(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(LikesEventInitial value),
    Result getAllUserFavouriteBarterItems(
        LikesEventGetAllUserFavouriteBarterItems value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllUserFavouriteBarterItems != null) {
      return getAllUserFavouriteBarterItems(this);
    }
    return orElse();
  }
}

abstract class LikesEventGetAllUserFavouriteBarterItems implements LikesEvent {
  const factory LikesEventGetAllUserFavouriteBarterItems(List<String> itemIds) =
      _$LikesEventGetAllUserFavouriteBarterItems;

  List<String> get itemIds;
  $LikesEventGetAllUserFavouriteBarterItemsCopyWith<
      LikesEventGetAllUserFavouriteBarterItems> get copyWith;
}

class _$LikesStateTearOff {
  const _$LikesStateTearOff();

  _LikesState call(
      {@required Future<List<BarterModel>> userFavouriteBarterItems,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _LikesState(
      userFavouriteBarterItems: userFavouriteBarterItems,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $LikesState = _$LikesStateTearOff();

mixin _$LikesState {
  Future<List<BarterModel>> get userFavouriteBarterItems;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $LikesStateCopyWith<LikesState> get copyWith;
}

abstract class $LikesStateCopyWith<$Res> {
  factory $LikesStateCopyWith(
          LikesState value, $Res Function(LikesState) then) =
      _$LikesStateCopyWithImpl<$Res>;
  $Res call(
      {Future<List<BarterModel>> userFavouriteBarterItems,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$LikesStateCopyWithImpl<$Res> implements $LikesStateCopyWith<$Res> {
  _$LikesStateCopyWithImpl(this._value, this._then);

  final LikesState _value;
  // ignore: unused_field
  final $Res Function(LikesState) _then;

  @override
  $Res call({
    Object userFavouriteBarterItems = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      userFavouriteBarterItems: userFavouriteBarterItems == freezed
          ? _value.userFavouriteBarterItems
          : userFavouriteBarterItems as Future<List<BarterModel>>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$LikesStateCopyWith<$Res> implements $LikesStateCopyWith<$Res> {
  factory _$LikesStateCopyWith(
          _LikesState value, $Res Function(_LikesState) then) =
      __$LikesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Future<List<BarterModel>> userFavouriteBarterItems,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$LikesStateCopyWithImpl<$Res> extends _$LikesStateCopyWithImpl<$Res>
    implements _$LikesStateCopyWith<$Res> {
  __$LikesStateCopyWithImpl(
      _LikesState _value, $Res Function(_LikesState) _then)
      : super(_value, (v) => _then(v as _LikesState));

  @override
  _LikesState get _value => super._value as _LikesState;

  @override
  $Res call({
    Object userFavouriteBarterItems = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_LikesState(
      userFavouriteBarterItems: userFavouriteBarterItems == freezed
          ? _value.userFavouriteBarterItems
          : userFavouriteBarterItems as Future<List<BarterModel>>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_LikesState implements _LikesState {
  const _$_LikesState(
      {@required this.userFavouriteBarterItems,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(userFavouriteBarterItems != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

  @override
  final Future<List<BarterModel>> userFavouriteBarterItems;
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
    return 'LikesState(userFavouriteBarterItems: $userFavouriteBarterItems, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikesState &&
            (identical(
                    other.userFavouriteBarterItems, userFavouriteBarterItems) ||
                const DeepCollectionEquality().equals(
                    other.userFavouriteBarterItems,
                    userFavouriteBarterItems)) &&
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
      const DeepCollectionEquality().hash(userFavouriteBarterItems) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$LikesStateCopyWith<_LikesState> get copyWith =>
      __$LikesStateCopyWithImpl<_LikesState>(this, _$identity);
}

abstract class _LikesState implements LikesState {
  const factory _LikesState(
      {@required Future<List<BarterModel>> userFavouriteBarterItems,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_LikesState;

  @override
  Future<List<BarterModel>> get userFavouriteBarterItems;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$LikesStateCopyWith<_LikesState> get copyWith;
}
