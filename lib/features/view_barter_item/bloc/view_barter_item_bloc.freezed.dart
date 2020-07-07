// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'view_barter_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ViewBarterItemEventTearOff {
  const _$ViewBarterItemEventTearOff();

  ViewBarterItemEventInitial initial() {
    return const ViewBarterItemEventInitial();
  }

  ViewBarterItemEventViewBarterItem viewBarterItem(BarterModel barterModel) {
    return ViewBarterItemEventViewBarterItem(
      barterModel,
    );
  }
}

// ignore: unused_element
const $ViewBarterItemEvent = _$ViewBarterItemEventTearOff();

mixin _$ViewBarterItemEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result viewBarterItem(BarterModel barterModel),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result viewBarterItem(BarterModel barterModel),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ViewBarterItemEventInitial value),
    @required Result viewBarterItem(ViewBarterItemEventViewBarterItem value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ViewBarterItemEventInitial value),
    Result viewBarterItem(ViewBarterItemEventViewBarterItem value),
    @required Result orElse(),
  });
}

abstract class $ViewBarterItemEventCopyWith<$Res> {
  factory $ViewBarterItemEventCopyWith(
          ViewBarterItemEvent value, $Res Function(ViewBarterItemEvent) then) =
      _$ViewBarterItemEventCopyWithImpl<$Res>;
}

class _$ViewBarterItemEventCopyWithImpl<$Res>
    implements $ViewBarterItemEventCopyWith<$Res> {
  _$ViewBarterItemEventCopyWithImpl(this._value, this._then);

  final ViewBarterItemEvent _value;
  // ignore: unused_field
  final $Res Function(ViewBarterItemEvent) _then;
}

abstract class $ViewBarterItemEventInitialCopyWith<$Res> {
  factory $ViewBarterItemEventInitialCopyWith(ViewBarterItemEventInitial value,
          $Res Function(ViewBarterItemEventInitial) then) =
      _$ViewBarterItemEventInitialCopyWithImpl<$Res>;
}

class _$ViewBarterItemEventInitialCopyWithImpl<$Res>
    extends _$ViewBarterItemEventCopyWithImpl<$Res>
    implements $ViewBarterItemEventInitialCopyWith<$Res> {
  _$ViewBarterItemEventInitialCopyWithImpl(ViewBarterItemEventInitial _value,
      $Res Function(ViewBarterItemEventInitial) _then)
      : super(_value, (v) => _then(v as ViewBarterItemEventInitial));

  @override
  ViewBarterItemEventInitial get _value =>
      super._value as ViewBarterItemEventInitial;
}

class _$ViewBarterItemEventInitial implements ViewBarterItemEventInitial {
  const _$ViewBarterItemEventInitial();

  @override
  String toString() {
    return 'ViewBarterItemEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ViewBarterItemEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result viewBarterItem(BarterModel barterModel),
  }) {
    assert(initial != null);
    assert(viewBarterItem != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result viewBarterItem(BarterModel barterModel),
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
    @required Result initial(ViewBarterItemEventInitial value),
    @required Result viewBarterItem(ViewBarterItemEventViewBarterItem value),
  }) {
    assert(initial != null);
    assert(viewBarterItem != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ViewBarterItemEventInitial value),
    Result viewBarterItem(ViewBarterItemEventViewBarterItem value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ViewBarterItemEventInitial implements ViewBarterItemEvent {
  const factory ViewBarterItemEventInitial() = _$ViewBarterItemEventInitial;
}

abstract class $ViewBarterItemEventViewBarterItemCopyWith<$Res> {
  factory $ViewBarterItemEventViewBarterItemCopyWith(
          ViewBarterItemEventViewBarterItem value,
          $Res Function(ViewBarterItemEventViewBarterItem) then) =
      _$ViewBarterItemEventViewBarterItemCopyWithImpl<$Res>;
  $Res call({BarterModel barterModel});
}

class _$ViewBarterItemEventViewBarterItemCopyWithImpl<$Res>
    extends _$ViewBarterItemEventCopyWithImpl<$Res>
    implements $ViewBarterItemEventViewBarterItemCopyWith<$Res> {
  _$ViewBarterItemEventViewBarterItemCopyWithImpl(
      ViewBarterItemEventViewBarterItem _value,
      $Res Function(ViewBarterItemEventViewBarterItem) _then)
      : super(_value, (v) => _then(v as ViewBarterItemEventViewBarterItem));

  @override
  ViewBarterItemEventViewBarterItem get _value =>
      super._value as ViewBarterItemEventViewBarterItem;

  @override
  $Res call({
    Object barterModel = freezed,
  }) {
    return _then(ViewBarterItemEventViewBarterItem(
      barterModel == freezed ? _value.barterModel : barterModel as BarterModel,
    ));
  }
}

class _$ViewBarterItemEventViewBarterItem
    implements ViewBarterItemEventViewBarterItem {
  const _$ViewBarterItemEventViewBarterItem(this.barterModel)
      : assert(barterModel != null);

  @override
  final BarterModel barterModel;

  @override
  String toString() {
    return 'ViewBarterItemEvent.viewBarterItem(barterModel: $barterModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ViewBarterItemEventViewBarterItem &&
            (identical(other.barterModel, barterModel) ||
                const DeepCollectionEquality()
                    .equals(other.barterModel, barterModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(barterModel);

  @override
  $ViewBarterItemEventViewBarterItemCopyWith<ViewBarterItemEventViewBarterItem>
      get copyWith => _$ViewBarterItemEventViewBarterItemCopyWithImpl<
          ViewBarterItemEventViewBarterItem>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result viewBarterItem(BarterModel barterModel),
  }) {
    assert(initial != null);
    assert(viewBarterItem != null);
    return viewBarterItem(barterModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result viewBarterItem(BarterModel barterModel),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewBarterItem != null) {
      return viewBarterItem(barterModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ViewBarterItemEventInitial value),
    @required Result viewBarterItem(ViewBarterItemEventViewBarterItem value),
  }) {
    assert(initial != null);
    assert(viewBarterItem != null);
    return viewBarterItem(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ViewBarterItemEventInitial value),
    Result viewBarterItem(ViewBarterItemEventViewBarterItem value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewBarterItem != null) {
      return viewBarterItem(this);
    }
    return orElse();
  }
}

abstract class ViewBarterItemEventViewBarterItem
    implements ViewBarterItemEvent {
  const factory ViewBarterItemEventViewBarterItem(BarterModel barterModel) =
      _$ViewBarterItemEventViewBarterItem;

  BarterModel get barterModel;
  $ViewBarterItemEventViewBarterItemCopyWith<ViewBarterItemEventViewBarterItem>
      get copyWith;
}

class _$ViewBarterItemStateTearOff {
  const _$ViewBarterItemStateTearOff();

  _ViewBarterItemState call({BarterModel barterModel}) {
    return _ViewBarterItemState(
      barterModel: barterModel,
    );
  }
}

// ignore: unused_element
const $ViewBarterItemState = _$ViewBarterItemStateTearOff();

mixin _$ViewBarterItemState {
  BarterModel get barterModel;

  $ViewBarterItemStateCopyWith<ViewBarterItemState> get copyWith;
}

abstract class $ViewBarterItemStateCopyWith<$Res> {
  factory $ViewBarterItemStateCopyWith(
          ViewBarterItemState value, $Res Function(ViewBarterItemState) then) =
      _$ViewBarterItemStateCopyWithImpl<$Res>;
  $Res call({BarterModel barterModel});
}

class _$ViewBarterItemStateCopyWithImpl<$Res>
    implements $ViewBarterItemStateCopyWith<$Res> {
  _$ViewBarterItemStateCopyWithImpl(this._value, this._then);

  final ViewBarterItemState _value;
  // ignore: unused_field
  final $Res Function(ViewBarterItemState) _then;

  @override
  $Res call({
    Object barterModel = freezed,
  }) {
    return _then(_value.copyWith(
      barterModel: barterModel == freezed
          ? _value.barterModel
          : barterModel as BarterModel,
    ));
  }
}

abstract class _$ViewBarterItemStateCopyWith<$Res>
    implements $ViewBarterItemStateCopyWith<$Res> {
  factory _$ViewBarterItemStateCopyWith(_ViewBarterItemState value,
          $Res Function(_ViewBarterItemState) then) =
      __$ViewBarterItemStateCopyWithImpl<$Res>;
  @override
  $Res call({BarterModel barterModel});
}

class __$ViewBarterItemStateCopyWithImpl<$Res>
    extends _$ViewBarterItemStateCopyWithImpl<$Res>
    implements _$ViewBarterItemStateCopyWith<$Res> {
  __$ViewBarterItemStateCopyWithImpl(
      _ViewBarterItemState _value, $Res Function(_ViewBarterItemState) _then)
      : super(_value, (v) => _then(v as _ViewBarterItemState));

  @override
  _ViewBarterItemState get _value => super._value as _ViewBarterItemState;

  @override
  $Res call({
    Object barterModel = freezed,
  }) {
    return _then(_ViewBarterItemState(
      barterModel: barterModel == freezed
          ? _value.barterModel
          : barterModel as BarterModel,
    ));
  }
}

class _$_ViewBarterItemState implements _ViewBarterItemState {
  const _$_ViewBarterItemState({this.barterModel});

  @override
  final BarterModel barterModel;

  @override
  String toString() {
    return 'ViewBarterItemState(barterModel: $barterModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewBarterItemState &&
            (identical(other.barterModel, barterModel) ||
                const DeepCollectionEquality()
                    .equals(other.barterModel, barterModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(barterModel);

  @override
  _$ViewBarterItemStateCopyWith<_ViewBarterItemState> get copyWith =>
      __$ViewBarterItemStateCopyWithImpl<_ViewBarterItemState>(
          this, _$identity);
}

abstract class _ViewBarterItemState implements ViewBarterItemState {
  const factory _ViewBarterItemState({BarterModel barterModel}) =
      _$_ViewBarterItemState;

  @override
  BarterModel get barterModel;
  @override
  _$ViewBarterItemStateCopyWith<_ViewBarterItemState> get copyWith;
}
