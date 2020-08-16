// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NavigationStateTearOff {
  const _$NavigationStateTearOff();

  NavigationStateHomeScreen homeScreen(int index) {
    return NavigationStateHomeScreen(
      index,
    );
  }

  NavigationStateSearchScreen likesScreen(int index) {
    return NavigationStateSearchScreen(
      index,
    );
  }

  NavigationStatePostItemScreen postBarterScreen(int index) {
    return NavigationStatePostItemScreen(
      index,
    );
  }

  NavigationStateUserBarterListingcreen userProfile(int index) {
    return NavigationStateUserBarterListingcreen(
      index,
    );
  }

  NavigationStateInboxScreen inboxScreen(int index) {
    return NavigationStateInboxScreen(
      index,
    );
  }
}

// ignore: unused_element
const $NavigationState = _$NavigationStateTearOff();

mixin _$NavigationState {
  int get index;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homeScreen(int index),
    @required Result likesScreen(int index),
    @required Result postBarterScreen(int index),
    @required Result userProfile(int index),
    @required Result inboxScreen(int index),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homeScreen(int index),
    Result likesScreen(int index),
    Result postBarterScreen(int index),
    Result userProfile(int index),
    Result inboxScreen(int index),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homeScreen(NavigationStateHomeScreen value),
    @required Result likesScreen(NavigationStateSearchScreen value),
    @required Result postBarterScreen(NavigationStatePostItemScreen value),
    @required Result userProfile(NavigationStateUserBarterListingcreen value),
    @required Result inboxScreen(NavigationStateInboxScreen value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homeScreen(NavigationStateHomeScreen value),
    Result likesScreen(NavigationStateSearchScreen value),
    Result postBarterScreen(NavigationStatePostItemScreen value),
    Result userProfile(NavigationStateUserBarterListingcreen value),
    Result inboxScreen(NavigationStateInboxScreen value),
    @required Result orElse(),
  });

  $NavigationStateCopyWith<NavigationState> get copyWith;
}

abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

abstract class $NavigationStateHomeScreenCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory $NavigationStateHomeScreenCopyWith(NavigationStateHomeScreen value,
          $Res Function(NavigationStateHomeScreen) then) =
      _$NavigationStateHomeScreenCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

class _$NavigationStateHomeScreenCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateHomeScreenCopyWith<$Res> {
  _$NavigationStateHomeScreenCopyWithImpl(NavigationStateHomeScreen _value,
      $Res Function(NavigationStateHomeScreen) _then)
      : super(_value, (v) => _then(v as NavigationStateHomeScreen));

  @override
  NavigationStateHomeScreen get _value =>
      super._value as NavigationStateHomeScreen;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(NavigationStateHomeScreen(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$NavigationStateHomeScreen implements NavigationStateHomeScreen {
  const _$NavigationStateHomeScreen(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'NavigationState.homeScreen(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationStateHomeScreen &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $NavigationStateHomeScreenCopyWith<NavigationStateHomeScreen> get copyWith =>
      _$NavigationStateHomeScreenCopyWithImpl<NavigationStateHomeScreen>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homeScreen(int index),
    @required Result likesScreen(int index),
    @required Result postBarterScreen(int index),
    @required Result userProfile(int index),
    @required Result inboxScreen(int index),
  }) {
    assert(homeScreen != null);
    assert(likesScreen != null);
    assert(postBarterScreen != null);
    assert(userProfile != null);
    assert(inboxScreen != null);
    return homeScreen(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homeScreen(int index),
    Result likesScreen(int index),
    Result postBarterScreen(int index),
    Result userProfile(int index),
    Result inboxScreen(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homeScreen != null) {
      return homeScreen(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homeScreen(NavigationStateHomeScreen value),
    @required Result likesScreen(NavigationStateSearchScreen value),
    @required Result postBarterScreen(NavigationStatePostItemScreen value),
    @required Result userProfile(NavigationStateUserBarterListingcreen value),
    @required Result inboxScreen(NavigationStateInboxScreen value),
  }) {
    assert(homeScreen != null);
    assert(likesScreen != null);
    assert(postBarterScreen != null);
    assert(userProfile != null);
    assert(inboxScreen != null);
    return homeScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homeScreen(NavigationStateHomeScreen value),
    Result likesScreen(NavigationStateSearchScreen value),
    Result postBarterScreen(NavigationStatePostItemScreen value),
    Result userProfile(NavigationStateUserBarterListingcreen value),
    Result inboxScreen(NavigationStateInboxScreen value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homeScreen != null) {
      return homeScreen(this);
    }
    return orElse();
  }
}

abstract class NavigationStateHomeScreen implements NavigationState {
  const factory NavigationStateHomeScreen(int index) =
      _$NavigationStateHomeScreen;

  @override
  int get index;
  @override
  $NavigationStateHomeScreenCopyWith<NavigationStateHomeScreen> get copyWith;
}

abstract class $NavigationStateSearchScreenCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory $NavigationStateSearchScreenCopyWith(
          NavigationStateSearchScreen value,
          $Res Function(NavigationStateSearchScreen) then) =
      _$NavigationStateSearchScreenCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

class _$NavigationStateSearchScreenCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateSearchScreenCopyWith<$Res> {
  _$NavigationStateSearchScreenCopyWithImpl(NavigationStateSearchScreen _value,
      $Res Function(NavigationStateSearchScreen) _then)
      : super(_value, (v) => _then(v as NavigationStateSearchScreen));

  @override
  NavigationStateSearchScreen get _value =>
      super._value as NavigationStateSearchScreen;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(NavigationStateSearchScreen(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$NavigationStateSearchScreen implements NavigationStateSearchScreen {
  const _$NavigationStateSearchScreen(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'NavigationState.likesScreen(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationStateSearchScreen &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $NavigationStateSearchScreenCopyWith<NavigationStateSearchScreen>
      get copyWith => _$NavigationStateSearchScreenCopyWithImpl<
          NavigationStateSearchScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homeScreen(int index),
    @required Result likesScreen(int index),
    @required Result postBarterScreen(int index),
    @required Result userProfile(int index),
    @required Result inboxScreen(int index),
  }) {
    assert(homeScreen != null);
    assert(likesScreen != null);
    assert(postBarterScreen != null);
    assert(userProfile != null);
    assert(inboxScreen != null);
    return likesScreen(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homeScreen(int index),
    Result likesScreen(int index),
    Result postBarterScreen(int index),
    Result userProfile(int index),
    Result inboxScreen(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likesScreen != null) {
      return likesScreen(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homeScreen(NavigationStateHomeScreen value),
    @required Result likesScreen(NavigationStateSearchScreen value),
    @required Result postBarterScreen(NavigationStatePostItemScreen value),
    @required Result userProfile(NavigationStateUserBarterListingcreen value),
    @required Result inboxScreen(NavigationStateInboxScreen value),
  }) {
    assert(homeScreen != null);
    assert(likesScreen != null);
    assert(postBarterScreen != null);
    assert(userProfile != null);
    assert(inboxScreen != null);
    return likesScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homeScreen(NavigationStateHomeScreen value),
    Result likesScreen(NavigationStateSearchScreen value),
    Result postBarterScreen(NavigationStatePostItemScreen value),
    Result userProfile(NavigationStateUserBarterListingcreen value),
    Result inboxScreen(NavigationStateInboxScreen value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likesScreen != null) {
      return likesScreen(this);
    }
    return orElse();
  }
}

abstract class NavigationStateSearchScreen implements NavigationState {
  const factory NavigationStateSearchScreen(int index) =
      _$NavigationStateSearchScreen;

  @override
  int get index;
  @override
  $NavigationStateSearchScreenCopyWith<NavigationStateSearchScreen>
      get copyWith;
}

abstract class $NavigationStatePostItemScreenCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory $NavigationStatePostItemScreenCopyWith(
          NavigationStatePostItemScreen value,
          $Res Function(NavigationStatePostItemScreen) then) =
      _$NavigationStatePostItemScreenCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

class _$NavigationStatePostItemScreenCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStatePostItemScreenCopyWith<$Res> {
  _$NavigationStatePostItemScreenCopyWithImpl(
      NavigationStatePostItemScreen _value,
      $Res Function(NavigationStatePostItemScreen) _then)
      : super(_value, (v) => _then(v as NavigationStatePostItemScreen));

  @override
  NavigationStatePostItemScreen get _value =>
      super._value as NavigationStatePostItemScreen;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(NavigationStatePostItemScreen(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$NavigationStatePostItemScreen implements NavigationStatePostItemScreen {
  const _$NavigationStatePostItemScreen(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'NavigationState.postBarterScreen(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationStatePostItemScreen &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $NavigationStatePostItemScreenCopyWith<NavigationStatePostItemScreen>
      get copyWith => _$NavigationStatePostItemScreenCopyWithImpl<
          NavigationStatePostItemScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homeScreen(int index),
    @required Result likesScreen(int index),
    @required Result postBarterScreen(int index),
    @required Result userProfile(int index),
    @required Result inboxScreen(int index),
  }) {
    assert(homeScreen != null);
    assert(likesScreen != null);
    assert(postBarterScreen != null);
    assert(userProfile != null);
    assert(inboxScreen != null);
    return postBarterScreen(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homeScreen(int index),
    Result likesScreen(int index),
    Result postBarterScreen(int index),
    Result userProfile(int index),
    Result inboxScreen(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postBarterScreen != null) {
      return postBarterScreen(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homeScreen(NavigationStateHomeScreen value),
    @required Result likesScreen(NavigationStateSearchScreen value),
    @required Result postBarterScreen(NavigationStatePostItemScreen value),
    @required Result userProfile(NavigationStateUserBarterListingcreen value),
    @required Result inboxScreen(NavigationStateInboxScreen value),
  }) {
    assert(homeScreen != null);
    assert(likesScreen != null);
    assert(postBarterScreen != null);
    assert(userProfile != null);
    assert(inboxScreen != null);
    return postBarterScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homeScreen(NavigationStateHomeScreen value),
    Result likesScreen(NavigationStateSearchScreen value),
    Result postBarterScreen(NavigationStatePostItemScreen value),
    Result userProfile(NavigationStateUserBarterListingcreen value),
    Result inboxScreen(NavigationStateInboxScreen value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postBarterScreen != null) {
      return postBarterScreen(this);
    }
    return orElse();
  }
}

abstract class NavigationStatePostItemScreen implements NavigationState {
  const factory NavigationStatePostItemScreen(int index) =
      _$NavigationStatePostItemScreen;

  @override
  int get index;
  @override
  $NavigationStatePostItemScreenCopyWith<NavigationStatePostItemScreen>
      get copyWith;
}

abstract class $NavigationStateUserBarterListingcreenCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory $NavigationStateUserBarterListingcreenCopyWith(
          NavigationStateUserBarterListingcreen value,
          $Res Function(NavigationStateUserBarterListingcreen) then) =
      _$NavigationStateUserBarterListingcreenCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

class _$NavigationStateUserBarterListingcreenCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateUserBarterListingcreenCopyWith<$Res> {
  _$NavigationStateUserBarterListingcreenCopyWithImpl(
      NavigationStateUserBarterListingcreen _value,
      $Res Function(NavigationStateUserBarterListingcreen) _then)
      : super(_value, (v) => _then(v as NavigationStateUserBarterListingcreen));

  @override
  NavigationStateUserBarterListingcreen get _value =>
      super._value as NavigationStateUserBarterListingcreen;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(NavigationStateUserBarterListingcreen(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$NavigationStateUserBarterListingcreen
    implements NavigationStateUserBarterListingcreen {
  const _$NavigationStateUserBarterListingcreen(this.index)
      : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'NavigationState.userProfile(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationStateUserBarterListingcreen &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $NavigationStateUserBarterListingcreenCopyWith<
          NavigationStateUserBarterListingcreen>
      get copyWith => _$NavigationStateUserBarterListingcreenCopyWithImpl<
          NavigationStateUserBarterListingcreen>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homeScreen(int index),
    @required Result likesScreen(int index),
    @required Result postBarterScreen(int index),
    @required Result userProfile(int index),
    @required Result inboxScreen(int index),
  }) {
    assert(homeScreen != null);
    assert(likesScreen != null);
    assert(postBarterScreen != null);
    assert(userProfile != null);
    assert(inboxScreen != null);
    return userProfile(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homeScreen(int index),
    Result likesScreen(int index),
    Result postBarterScreen(int index),
    Result userProfile(int index),
    Result inboxScreen(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userProfile != null) {
      return userProfile(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homeScreen(NavigationStateHomeScreen value),
    @required Result likesScreen(NavigationStateSearchScreen value),
    @required Result postBarterScreen(NavigationStatePostItemScreen value),
    @required Result userProfile(NavigationStateUserBarterListingcreen value),
    @required Result inboxScreen(NavigationStateInboxScreen value),
  }) {
    assert(homeScreen != null);
    assert(likesScreen != null);
    assert(postBarterScreen != null);
    assert(userProfile != null);
    assert(inboxScreen != null);
    return userProfile(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homeScreen(NavigationStateHomeScreen value),
    Result likesScreen(NavigationStateSearchScreen value),
    Result postBarterScreen(NavigationStatePostItemScreen value),
    Result userProfile(NavigationStateUserBarterListingcreen value),
    Result inboxScreen(NavigationStateInboxScreen value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userProfile != null) {
      return userProfile(this);
    }
    return orElse();
  }
}

abstract class NavigationStateUserBarterListingcreen
    implements NavigationState {
  const factory NavigationStateUserBarterListingcreen(int index) =
      _$NavigationStateUserBarterListingcreen;

  @override
  int get index;
  @override
  $NavigationStateUserBarterListingcreenCopyWith<
      NavigationStateUserBarterListingcreen> get copyWith;
}

abstract class $NavigationStateInboxScreenCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory $NavigationStateInboxScreenCopyWith(NavigationStateInboxScreen value,
          $Res Function(NavigationStateInboxScreen) then) =
      _$NavigationStateInboxScreenCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

class _$NavigationStateInboxScreenCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateInboxScreenCopyWith<$Res> {
  _$NavigationStateInboxScreenCopyWithImpl(NavigationStateInboxScreen _value,
      $Res Function(NavigationStateInboxScreen) _then)
      : super(_value, (v) => _then(v as NavigationStateInboxScreen));

  @override
  NavigationStateInboxScreen get _value =>
      super._value as NavigationStateInboxScreen;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(NavigationStateInboxScreen(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$NavigationStateInboxScreen implements NavigationStateInboxScreen {
  const _$NavigationStateInboxScreen(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'NavigationState.inboxScreen(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationStateInboxScreen &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $NavigationStateInboxScreenCopyWith<NavigationStateInboxScreen>
      get copyWith =>
          _$NavigationStateInboxScreenCopyWithImpl<NavigationStateInboxScreen>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homeScreen(int index),
    @required Result likesScreen(int index),
    @required Result postBarterScreen(int index),
    @required Result userProfile(int index),
    @required Result inboxScreen(int index),
  }) {
    assert(homeScreen != null);
    assert(likesScreen != null);
    assert(postBarterScreen != null);
    assert(userProfile != null);
    assert(inboxScreen != null);
    return inboxScreen(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homeScreen(int index),
    Result likesScreen(int index),
    Result postBarterScreen(int index),
    Result userProfile(int index),
    Result inboxScreen(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inboxScreen != null) {
      return inboxScreen(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homeScreen(NavigationStateHomeScreen value),
    @required Result likesScreen(NavigationStateSearchScreen value),
    @required Result postBarterScreen(NavigationStatePostItemScreen value),
    @required Result userProfile(NavigationStateUserBarterListingcreen value),
    @required Result inboxScreen(NavigationStateInboxScreen value),
  }) {
    assert(homeScreen != null);
    assert(likesScreen != null);
    assert(postBarterScreen != null);
    assert(userProfile != null);
    assert(inboxScreen != null);
    return inboxScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homeScreen(NavigationStateHomeScreen value),
    Result likesScreen(NavigationStateSearchScreen value),
    Result postBarterScreen(NavigationStatePostItemScreen value),
    Result userProfile(NavigationStateUserBarterListingcreen value),
    Result inboxScreen(NavigationStateInboxScreen value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inboxScreen != null) {
      return inboxScreen(this);
    }
    return orElse();
  }
}

abstract class NavigationStateInboxScreen implements NavigationState {
  const factory NavigationStateInboxScreen(int index) =
      _$NavigationStateInboxScreen;

  @override
  int get index;
  @override
  $NavigationStateInboxScreenCopyWith<NavigationStateInboxScreen> get copyWith;
}
