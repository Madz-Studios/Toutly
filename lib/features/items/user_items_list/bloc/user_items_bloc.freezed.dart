// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserItemsEventTearOff {
  const _$UserItemsEventTearOff();

  UserItemsEventInit init() {
    return const UserItemsEventInit();
  }

  UserItemsEventLoadUserBarterItems loadUserBarterItems(int length) {
    return UserItemsEventLoadUserBarterItems(
      length,
    );
  }
}

// ignore: unused_element
const $UserItemsEvent = _$UserItemsEventTearOff();

mixin _$UserItemsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loadUserBarterItems(int length),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loadUserBarterItems(int length),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UserItemsEventInit value),
    @required
        Result loadUserBarterItems(UserItemsEventLoadUserBarterItems value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UserItemsEventInit value),
    Result loadUserBarterItems(UserItemsEventLoadUserBarterItems value),
    @required Result orElse(),
  });
}

abstract class $UserItemsEventCopyWith<$Res> {
  factory $UserItemsEventCopyWith(
          UserItemsEvent value, $Res Function(UserItemsEvent) then) =
      _$UserItemsEventCopyWithImpl<$Res>;
}

class _$UserItemsEventCopyWithImpl<$Res>
    implements $UserItemsEventCopyWith<$Res> {
  _$UserItemsEventCopyWithImpl(this._value, this._then);

  final UserItemsEvent _value;
  // ignore: unused_field
  final $Res Function(UserItemsEvent) _then;
}

abstract class $UserItemsEventInitCopyWith<$Res> {
  factory $UserItemsEventInitCopyWith(
          UserItemsEventInit value, $Res Function(UserItemsEventInit) then) =
      _$UserItemsEventInitCopyWithImpl<$Res>;
}

class _$UserItemsEventInitCopyWithImpl<$Res>
    extends _$UserItemsEventCopyWithImpl<$Res>
    implements $UserItemsEventInitCopyWith<$Res> {
  _$UserItemsEventInitCopyWithImpl(
      UserItemsEventInit _value, $Res Function(UserItemsEventInit) _then)
      : super(_value, (v) => _then(v as UserItemsEventInit));

  @override
  UserItemsEventInit get _value => super._value as UserItemsEventInit;
}

class _$UserItemsEventInit implements UserItemsEventInit {
  const _$UserItemsEventInit();

  @override
  String toString() {
    return 'UserItemsEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserItemsEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loadUserBarterItems(int length),
  }) {
    assert(init != null);
    assert(loadUserBarterItems != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loadUserBarterItems(int length),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UserItemsEventInit value),
    @required
        Result loadUserBarterItems(UserItemsEventLoadUserBarterItems value),
  }) {
    assert(init != null);
    assert(loadUserBarterItems != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UserItemsEventInit value),
    Result loadUserBarterItems(UserItemsEventLoadUserBarterItems value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UserItemsEventInit implements UserItemsEvent {
  const factory UserItemsEventInit() = _$UserItemsEventInit;
}

abstract class $UserItemsEventLoadUserBarterItemsCopyWith<$Res> {
  factory $UserItemsEventLoadUserBarterItemsCopyWith(
          UserItemsEventLoadUserBarterItems value,
          $Res Function(UserItemsEventLoadUserBarterItems) then) =
      _$UserItemsEventLoadUserBarterItemsCopyWithImpl<$Res>;
  $Res call({int length});
}

class _$UserItemsEventLoadUserBarterItemsCopyWithImpl<$Res>
    extends _$UserItemsEventCopyWithImpl<$Res>
    implements $UserItemsEventLoadUserBarterItemsCopyWith<$Res> {
  _$UserItemsEventLoadUserBarterItemsCopyWithImpl(
      UserItemsEventLoadUserBarterItems _value,
      $Res Function(UserItemsEventLoadUserBarterItems) _then)
      : super(_value, (v) => _then(v as UserItemsEventLoadUserBarterItems));

  @override
  UserItemsEventLoadUserBarterItems get _value =>
      super._value as UserItemsEventLoadUserBarterItems;

  @override
  $Res call({
    Object length = freezed,
  }) {
    return _then(UserItemsEventLoadUserBarterItems(
      length == freezed ? _value.length : length as int,
    ));
  }
}

class _$UserItemsEventLoadUserBarterItems
    implements UserItemsEventLoadUserBarterItems {
  const _$UserItemsEventLoadUserBarterItems(this.length)
      : assert(length != null);

  @override
  final int length;

  @override
  String toString() {
    return 'UserItemsEvent.loadUserBarterItems(length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserItemsEventLoadUserBarterItems &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(length);

  @override
  $UserItemsEventLoadUserBarterItemsCopyWith<UserItemsEventLoadUserBarterItems>
      get copyWith => _$UserItemsEventLoadUserBarterItemsCopyWithImpl<
          UserItemsEventLoadUserBarterItems>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loadUserBarterItems(int length),
  }) {
    assert(init != null);
    assert(loadUserBarterItems != null);
    return loadUserBarterItems(length);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loadUserBarterItems(int length),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadUserBarterItems != null) {
      return loadUserBarterItems(length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UserItemsEventInit value),
    @required
        Result loadUserBarterItems(UserItemsEventLoadUserBarterItems value),
  }) {
    assert(init != null);
    assert(loadUserBarterItems != null);
    return loadUserBarterItems(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UserItemsEventInit value),
    Result loadUserBarterItems(UserItemsEventLoadUserBarterItems value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadUserBarterItems != null) {
      return loadUserBarterItems(this);
    }
    return orElse();
  }
}

abstract class UserItemsEventLoadUserBarterItems implements UserItemsEvent {
  const factory UserItemsEventLoadUserBarterItems(int length) =
      _$UserItemsEventLoadUserBarterItems;

  int get length;
  $UserItemsEventLoadUserBarterItemsCopyWith<UserItemsEventLoadUserBarterItems>
      get copyWith;
}

class _$UserItemsStateTearOff {
  const _$UserItemsStateTearOff();

  UserItemsStateInitial initial() {
    return const UserItemsStateInitial();
  }

  UserItemsStateInProgress inProgress() {
    return const UserItemsStateInProgress();
  }

  UserItemsStateSuccess success(List<BarterModel> barterList) {
    return UserItemsStateSuccess(
      barterList,
    );
  }

  UserItemsStateFailure failure(String message) {
    return UserItemsStateFailure(
      message,
    );
  }
}

// ignore: unused_element
const $UserItemsState = _$UserItemsStateTearOff();

mixin _$UserItemsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result success(List<BarterModel> barterList),
    @required Result failure(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result success(List<BarterModel> barterList),
    Result failure(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserItemsStateInitial value),
    @required Result inProgress(UserItemsStateInProgress value),
    @required Result success(UserItemsStateSuccess value),
    @required Result failure(UserItemsStateFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserItemsStateInitial value),
    Result inProgress(UserItemsStateInProgress value),
    Result success(UserItemsStateSuccess value),
    Result failure(UserItemsStateFailure value),
    @required Result orElse(),
  });
}

abstract class $UserItemsStateCopyWith<$Res> {
  factory $UserItemsStateCopyWith(
          UserItemsState value, $Res Function(UserItemsState) then) =
      _$UserItemsStateCopyWithImpl<$Res>;
}

class _$UserItemsStateCopyWithImpl<$Res>
    implements $UserItemsStateCopyWith<$Res> {
  _$UserItemsStateCopyWithImpl(this._value, this._then);

  final UserItemsState _value;
  // ignore: unused_field
  final $Res Function(UserItemsState) _then;
}

abstract class $UserItemsStateInitialCopyWith<$Res> {
  factory $UserItemsStateInitialCopyWith(UserItemsStateInitial value,
          $Res Function(UserItemsStateInitial) then) =
      _$UserItemsStateInitialCopyWithImpl<$Res>;
}

class _$UserItemsStateInitialCopyWithImpl<$Res>
    extends _$UserItemsStateCopyWithImpl<$Res>
    implements $UserItemsStateInitialCopyWith<$Res> {
  _$UserItemsStateInitialCopyWithImpl(
      UserItemsStateInitial _value, $Res Function(UserItemsStateInitial) _then)
      : super(_value, (v) => _then(v as UserItemsStateInitial));

  @override
  UserItemsStateInitial get _value => super._value as UserItemsStateInitial;
}

class _$UserItemsStateInitial implements UserItemsStateInitial {
  const _$UserItemsStateInitial();

  @override
  String toString() {
    return 'UserItemsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserItemsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result success(List<BarterModel> barterList),
    @required Result failure(String message),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result success(List<BarterModel> barterList),
    Result failure(String message),
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
    @required Result initial(UserItemsStateInitial value),
    @required Result inProgress(UserItemsStateInProgress value),
    @required Result success(UserItemsStateSuccess value),
    @required Result failure(UserItemsStateFailure value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserItemsStateInitial value),
    Result inProgress(UserItemsStateInProgress value),
    Result success(UserItemsStateSuccess value),
    Result failure(UserItemsStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserItemsStateInitial implements UserItemsState {
  const factory UserItemsStateInitial() = _$UserItemsStateInitial;
}

abstract class $UserItemsStateInProgressCopyWith<$Res> {
  factory $UserItemsStateInProgressCopyWith(UserItemsStateInProgress value,
          $Res Function(UserItemsStateInProgress) then) =
      _$UserItemsStateInProgressCopyWithImpl<$Res>;
}

class _$UserItemsStateInProgressCopyWithImpl<$Res>
    extends _$UserItemsStateCopyWithImpl<$Res>
    implements $UserItemsStateInProgressCopyWith<$Res> {
  _$UserItemsStateInProgressCopyWithImpl(UserItemsStateInProgress _value,
      $Res Function(UserItemsStateInProgress) _then)
      : super(_value, (v) => _then(v as UserItemsStateInProgress));

  @override
  UserItemsStateInProgress get _value =>
      super._value as UserItemsStateInProgress;
}

class _$UserItemsStateInProgress implements UserItemsStateInProgress {
  const _$UserItemsStateInProgress();

  @override
  String toString() {
    return 'UserItemsState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserItemsStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result success(List<BarterModel> barterList),
    @required Result failure(String message),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return inProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result success(List<BarterModel> barterList),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserItemsStateInitial value),
    @required Result inProgress(UserItemsStateInProgress value),
    @required Result success(UserItemsStateSuccess value),
    @required Result failure(UserItemsStateFailure value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserItemsStateInitial value),
    Result inProgress(UserItemsStateInProgress value),
    Result success(UserItemsStateSuccess value),
    Result failure(UserItemsStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class UserItemsStateInProgress implements UserItemsState {
  const factory UserItemsStateInProgress() = _$UserItemsStateInProgress;
}

abstract class $UserItemsStateSuccessCopyWith<$Res> {
  factory $UserItemsStateSuccessCopyWith(UserItemsStateSuccess value,
          $Res Function(UserItemsStateSuccess) then) =
      _$UserItemsStateSuccessCopyWithImpl<$Res>;
  $Res call({List<BarterModel> barterList});
}

class _$UserItemsStateSuccessCopyWithImpl<$Res>
    extends _$UserItemsStateCopyWithImpl<$Res>
    implements $UserItemsStateSuccessCopyWith<$Res> {
  _$UserItemsStateSuccessCopyWithImpl(
      UserItemsStateSuccess _value, $Res Function(UserItemsStateSuccess) _then)
      : super(_value, (v) => _then(v as UserItemsStateSuccess));

  @override
  UserItemsStateSuccess get _value => super._value as UserItemsStateSuccess;

  @override
  $Res call({
    Object barterList = freezed,
  }) {
    return _then(UserItemsStateSuccess(
      barterList == freezed
          ? _value.barterList
          : barterList as List<BarterModel>,
    ));
  }
}

class _$UserItemsStateSuccess implements UserItemsStateSuccess {
  const _$UserItemsStateSuccess(this.barterList) : assert(barterList != null);

  @override
  final List<BarterModel> barterList;

  @override
  String toString() {
    return 'UserItemsState.success(barterList: $barterList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserItemsStateSuccess &&
            (identical(other.barterList, barterList) ||
                const DeepCollectionEquality()
                    .equals(other.barterList, barterList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(barterList);

  @override
  $UserItemsStateSuccessCopyWith<UserItemsStateSuccess> get copyWith =>
      _$UserItemsStateSuccessCopyWithImpl<UserItemsStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result success(List<BarterModel> barterList),
    @required Result failure(String message),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return success(barterList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result success(List<BarterModel> barterList),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(barterList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserItemsStateInitial value),
    @required Result inProgress(UserItemsStateInProgress value),
    @required Result success(UserItemsStateSuccess value),
    @required Result failure(UserItemsStateFailure value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserItemsStateInitial value),
    Result inProgress(UserItemsStateInProgress value),
    Result success(UserItemsStateSuccess value),
    Result failure(UserItemsStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserItemsStateSuccess implements UserItemsState {
  const factory UserItemsStateSuccess(List<BarterModel> barterList) =
      _$UserItemsStateSuccess;

  List<BarterModel> get barterList;
  $UserItemsStateSuccessCopyWith<UserItemsStateSuccess> get copyWith;
}

abstract class $UserItemsStateFailureCopyWith<$Res> {
  factory $UserItemsStateFailureCopyWith(UserItemsStateFailure value,
          $Res Function(UserItemsStateFailure) then) =
      _$UserItemsStateFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$UserItemsStateFailureCopyWithImpl<$Res>
    extends _$UserItemsStateCopyWithImpl<$Res>
    implements $UserItemsStateFailureCopyWith<$Res> {
  _$UserItemsStateFailureCopyWithImpl(
      UserItemsStateFailure _value, $Res Function(UserItemsStateFailure) _then)
      : super(_value, (v) => _then(v as UserItemsStateFailure));

  @override
  UserItemsStateFailure get _value => super._value as UserItemsStateFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(UserItemsStateFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$UserItemsStateFailure implements UserItemsStateFailure {
  const _$UserItemsStateFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'UserItemsState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserItemsStateFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $UserItemsStateFailureCopyWith<UserItemsStateFailure> get copyWith =>
      _$UserItemsStateFailureCopyWithImpl<UserItemsStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result success(List<BarterModel> barterList),
    @required Result failure(String message),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return failure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result success(List<BarterModel> barterList),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserItemsStateInitial value),
    @required Result inProgress(UserItemsStateInProgress value),
    @required Result success(UserItemsStateSuccess value),
    @required Result failure(UserItemsStateFailure value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserItemsStateInitial value),
    Result inProgress(UserItemsStateInProgress value),
    Result success(UserItemsStateSuccess value),
    Result failure(UserItemsStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class UserItemsStateFailure implements UserItemsState {
  const factory UserItemsStateFailure(String message) = _$UserItemsStateFailure;

  String get message;
  $UserItemsStateFailureCopyWith<UserItemsStateFailure> get copyWith;
}
