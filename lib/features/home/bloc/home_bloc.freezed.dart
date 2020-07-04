// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  HomeCheckUserLocation checkUserLocation() {
    return const HomeCheckUserLocation();
  }

  HomeGetUserLocation loadBarterFeeds() {
    return const HomeGetUserLocation();
  }
}

// ignore: unused_element
const $HomeEvent = _$HomeEventTearOff();

mixin _$HomeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkUserLocation(),
    @required Result loadBarterFeeds(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkUserLocation(),
    Result loadBarterFeeds(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkUserLocation(HomeCheckUserLocation value),
    @required Result loadBarterFeeds(HomeGetUserLocation value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkUserLocation(HomeCheckUserLocation value),
    Result loadBarterFeeds(HomeGetUserLocation value),
    @required Result orElse(),
  });
}

abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

abstract class $HomeCheckUserLocationCopyWith<$Res> {
  factory $HomeCheckUserLocationCopyWith(HomeCheckUserLocation value,
          $Res Function(HomeCheckUserLocation) then) =
      _$HomeCheckUserLocationCopyWithImpl<$Res>;
}

class _$HomeCheckUserLocationCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeCheckUserLocationCopyWith<$Res> {
  _$HomeCheckUserLocationCopyWithImpl(
      HomeCheckUserLocation _value, $Res Function(HomeCheckUserLocation) _then)
      : super(_value, (v) => _then(v as HomeCheckUserLocation));

  @override
  HomeCheckUserLocation get _value => super._value as HomeCheckUserLocation;
}

class _$HomeCheckUserLocation implements HomeCheckUserLocation {
  const _$HomeCheckUserLocation();

  @override
  String toString() {
    return 'HomeEvent.checkUserLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeCheckUserLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkUserLocation(),
    @required Result loadBarterFeeds(),
  }) {
    assert(checkUserLocation != null);
    assert(loadBarterFeeds != null);
    return checkUserLocation();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkUserLocation(),
    Result loadBarterFeeds(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkUserLocation != null) {
      return checkUserLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkUserLocation(HomeCheckUserLocation value),
    @required Result loadBarterFeeds(HomeGetUserLocation value),
  }) {
    assert(checkUserLocation != null);
    assert(loadBarterFeeds != null);
    return checkUserLocation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkUserLocation(HomeCheckUserLocation value),
    Result loadBarterFeeds(HomeGetUserLocation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkUserLocation != null) {
      return checkUserLocation(this);
    }
    return orElse();
  }
}

abstract class HomeCheckUserLocation implements HomeEvent {
  const factory HomeCheckUserLocation() = _$HomeCheckUserLocation;
}

abstract class $HomeGetUserLocationCopyWith<$Res> {
  factory $HomeGetUserLocationCopyWith(
          HomeGetUserLocation value, $Res Function(HomeGetUserLocation) then) =
      _$HomeGetUserLocationCopyWithImpl<$Res>;
}

class _$HomeGetUserLocationCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeGetUserLocationCopyWith<$Res> {
  _$HomeGetUserLocationCopyWithImpl(
      HomeGetUserLocation _value, $Res Function(HomeGetUserLocation) _then)
      : super(_value, (v) => _then(v as HomeGetUserLocation));

  @override
  HomeGetUserLocation get _value => super._value as HomeGetUserLocation;
}

class _$HomeGetUserLocation implements HomeGetUserLocation {
  const _$HomeGetUserLocation();

  @override
  String toString() {
    return 'HomeEvent.loadBarterFeeds()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeGetUserLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkUserLocation(),
    @required Result loadBarterFeeds(),
  }) {
    assert(checkUserLocation != null);
    assert(loadBarterFeeds != null);
    return loadBarterFeeds();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkUserLocation(),
    Result loadBarterFeeds(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadBarterFeeds != null) {
      return loadBarterFeeds();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkUserLocation(HomeCheckUserLocation value),
    @required Result loadBarterFeeds(HomeGetUserLocation value),
  }) {
    assert(checkUserLocation != null);
    assert(loadBarterFeeds != null);
    return loadBarterFeeds(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkUserLocation(HomeCheckUserLocation value),
    Result loadBarterFeeds(HomeGetUserLocation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadBarterFeeds != null) {
      return loadBarterFeeds(this);
    }
    return orElse();
  }
}

abstract class HomeGetUserLocation implements HomeEvent {
  const factory HomeGetUserLocation() = _$HomeGetUserLocation;
}

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeStateInitial initial() {
    return const HomeStateInitial();
  }

  HomeStateFailure failure(String message) {
    return HomeStateFailure(
      message,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result failure(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failure(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(HomeStateInitial value),
    @required Result failure(HomeStateFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomeStateInitial value),
    Result failure(HomeStateFailure value),
    @required Result orElse(),
  });
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

abstract class $HomeStateInitialCopyWith<$Res> {
  factory $HomeStateInitialCopyWith(
          HomeStateInitial value, $Res Function(HomeStateInitial) then) =
      _$HomeStateInitialCopyWithImpl<$Res>;
}

class _$HomeStateInitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateInitialCopyWith<$Res> {
  _$HomeStateInitialCopyWithImpl(
      HomeStateInitial _value, $Res Function(HomeStateInitial) _then)
      : super(_value, (v) => _then(v as HomeStateInitial));

  @override
  HomeStateInitial get _value => super._value as HomeStateInitial;
}

class _$HomeStateInitial implements HomeStateInitial {
  const _$HomeStateInitial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result failure(String message),
  }) {
    assert(initial != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
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
    @required Result initial(HomeStateInitial value),
    @required Result failure(HomeStateFailure value),
  }) {
    assert(initial != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomeStateInitial value),
    Result failure(HomeStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeStateInitial implements HomeState {
  const factory HomeStateInitial() = _$HomeStateInitial;
}

abstract class $HomeStateFailureCopyWith<$Res> {
  factory $HomeStateFailureCopyWith(
          HomeStateFailure value, $Res Function(HomeStateFailure) then) =
      _$HomeStateFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$HomeStateFailureCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateFailureCopyWith<$Res> {
  _$HomeStateFailureCopyWithImpl(
      HomeStateFailure _value, $Res Function(HomeStateFailure) _then)
      : super(_value, (v) => _then(v as HomeStateFailure));

  @override
  HomeStateFailure get _value => super._value as HomeStateFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(HomeStateFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$HomeStateFailure implements HomeStateFailure {
  const _$HomeStateFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeStateFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $HomeStateFailureCopyWith<HomeStateFailure> get copyWith =>
      _$HomeStateFailureCopyWithImpl<HomeStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result failure(String message),
  }) {
    assert(initial != null);
    assert(failure != null);
    return failure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
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
    @required Result initial(HomeStateInitial value),
    @required Result failure(HomeStateFailure value),
  }) {
    assert(initial != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomeStateInitial value),
    Result failure(HomeStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeStateFailure implements HomeState {
  const factory HomeStateFailure(String message) = _$HomeStateFailure;

  String get message;
  $HomeStateFailureCopyWith<HomeStateFailure> get copyWith;
}
