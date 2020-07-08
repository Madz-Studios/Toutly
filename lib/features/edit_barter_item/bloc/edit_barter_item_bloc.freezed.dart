// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'edit_barter_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EditBarterItemEventTearOff {
  const _$EditBarterItemEventTearOff();

  EditBarterItemEventInitial initial() {
    return const EditBarterItemEventInitial();
  }

  EditBarterItemEventEditBarterItem editBarterItem(BarterModel barterModel) {
    return EditBarterItemEventEditBarterItem(
      barterModel,
    );
  }
}

// ignore: unused_element
const $EditBarterItemEvent = _$EditBarterItemEventTearOff();

mixin _$EditBarterItemEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result editBarterItem(BarterModel barterModel),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result editBarterItem(BarterModel barterModel),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EditBarterItemEventInitial value),
    @required Result editBarterItem(EditBarterItemEventEditBarterItem value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EditBarterItemEventInitial value),
    Result editBarterItem(EditBarterItemEventEditBarterItem value),
    @required Result orElse(),
  });
}

abstract class $EditBarterItemEventCopyWith<$Res> {
  factory $EditBarterItemEventCopyWith(
          EditBarterItemEvent value, $Res Function(EditBarterItemEvent) then) =
      _$EditBarterItemEventCopyWithImpl<$Res>;
}

class _$EditBarterItemEventCopyWithImpl<$Res>
    implements $EditBarterItemEventCopyWith<$Res> {
  _$EditBarterItemEventCopyWithImpl(this._value, this._then);

  final EditBarterItemEvent _value;
  // ignore: unused_field
  final $Res Function(EditBarterItemEvent) _then;
}

abstract class $EditBarterItemEventInitialCopyWith<$Res> {
  factory $EditBarterItemEventInitialCopyWith(EditBarterItemEventInitial value,
          $Res Function(EditBarterItemEventInitial) then) =
      _$EditBarterItemEventInitialCopyWithImpl<$Res>;
}

class _$EditBarterItemEventInitialCopyWithImpl<$Res>
    extends _$EditBarterItemEventCopyWithImpl<$Res>
    implements $EditBarterItemEventInitialCopyWith<$Res> {
  _$EditBarterItemEventInitialCopyWithImpl(EditBarterItemEventInitial _value,
      $Res Function(EditBarterItemEventInitial) _then)
      : super(_value, (v) => _then(v as EditBarterItemEventInitial));

  @override
  EditBarterItemEventInitial get _value =>
      super._value as EditBarterItemEventInitial;
}

class _$EditBarterItemEventInitial implements EditBarterItemEventInitial {
  const _$EditBarterItemEventInitial();

  @override
  String toString() {
    return 'EditBarterItemEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EditBarterItemEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result editBarterItem(BarterModel barterModel),
  }) {
    assert(initial != null);
    assert(editBarterItem != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result editBarterItem(BarterModel barterModel),
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
    @required Result initial(EditBarterItemEventInitial value),
    @required Result editBarterItem(EditBarterItemEventEditBarterItem value),
  }) {
    assert(initial != null);
    assert(editBarterItem != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EditBarterItemEventInitial value),
    Result editBarterItem(EditBarterItemEventEditBarterItem value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EditBarterItemEventInitial implements EditBarterItemEvent {
  const factory EditBarterItemEventInitial() = _$EditBarterItemEventInitial;
}

abstract class $EditBarterItemEventEditBarterItemCopyWith<$Res> {
  factory $EditBarterItemEventEditBarterItemCopyWith(
          EditBarterItemEventEditBarterItem value,
          $Res Function(EditBarterItemEventEditBarterItem) then) =
      _$EditBarterItemEventEditBarterItemCopyWithImpl<$Res>;
  $Res call({BarterModel barterModel});
}

class _$EditBarterItemEventEditBarterItemCopyWithImpl<$Res>
    extends _$EditBarterItemEventCopyWithImpl<$Res>
    implements $EditBarterItemEventEditBarterItemCopyWith<$Res> {
  _$EditBarterItemEventEditBarterItemCopyWithImpl(
      EditBarterItemEventEditBarterItem _value,
      $Res Function(EditBarterItemEventEditBarterItem) _then)
      : super(_value, (v) => _then(v as EditBarterItemEventEditBarterItem));

  @override
  EditBarterItemEventEditBarterItem get _value =>
      super._value as EditBarterItemEventEditBarterItem;

  @override
  $Res call({
    Object barterModel = freezed,
  }) {
    return _then(EditBarterItemEventEditBarterItem(
      barterModel == freezed ? _value.barterModel : barterModel as BarterModel,
    ));
  }
}

class _$EditBarterItemEventEditBarterItem
    implements EditBarterItemEventEditBarterItem {
  const _$EditBarterItemEventEditBarterItem(this.barterModel)
      : assert(barterModel != null);

  @override
  final BarterModel barterModel;

  @override
  String toString() {
    return 'EditBarterItemEvent.editBarterItem(barterModel: $barterModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditBarterItemEventEditBarterItem &&
            (identical(other.barterModel, barterModel) ||
                const DeepCollectionEquality()
                    .equals(other.barterModel, barterModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(barterModel);

  @override
  $EditBarterItemEventEditBarterItemCopyWith<EditBarterItemEventEditBarterItem>
      get copyWith => _$EditBarterItemEventEditBarterItemCopyWithImpl<
          EditBarterItemEventEditBarterItem>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result editBarterItem(BarterModel barterModel),
  }) {
    assert(initial != null);
    assert(editBarterItem != null);
    return editBarterItem(barterModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result editBarterItem(BarterModel barterModel),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editBarterItem != null) {
      return editBarterItem(barterModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EditBarterItemEventInitial value),
    @required Result editBarterItem(EditBarterItemEventEditBarterItem value),
  }) {
    assert(initial != null);
    assert(editBarterItem != null);
    return editBarterItem(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EditBarterItemEventInitial value),
    Result editBarterItem(EditBarterItemEventEditBarterItem value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editBarterItem != null) {
      return editBarterItem(this);
    }
    return orElse();
  }
}

abstract class EditBarterItemEventEditBarterItem
    implements EditBarterItemEvent {
  const factory EditBarterItemEventEditBarterItem(BarterModel barterModel) =
      _$EditBarterItemEventEditBarterItem;

  BarterModel get barterModel;
  $EditBarterItemEventEditBarterItemCopyWith<EditBarterItemEventEditBarterItem>
      get copyWith;
}

class _$EditBarterItemStateTearOff {
  const _$EditBarterItemStateTearOff();

  EditBarterItemStateInitial initial() {
    return const EditBarterItemStateInitial();
  }
}

// ignore: unused_element
const $EditBarterItemState = _$EditBarterItemStateTearOff();

mixin _$EditBarterItemState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EditBarterItemStateInitial value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EditBarterItemStateInitial value),
    @required Result orElse(),
  });
}

abstract class $EditBarterItemStateCopyWith<$Res> {
  factory $EditBarterItemStateCopyWith(
          EditBarterItemState value, $Res Function(EditBarterItemState) then) =
      _$EditBarterItemStateCopyWithImpl<$Res>;
}

class _$EditBarterItemStateCopyWithImpl<$Res>
    implements $EditBarterItemStateCopyWith<$Res> {
  _$EditBarterItemStateCopyWithImpl(this._value, this._then);

  final EditBarterItemState _value;
  // ignore: unused_field
  final $Res Function(EditBarterItemState) _then;
}

abstract class $EditBarterItemStateInitialCopyWith<$Res> {
  factory $EditBarterItemStateInitialCopyWith(EditBarterItemStateInitial value,
          $Res Function(EditBarterItemStateInitial) then) =
      _$EditBarterItemStateInitialCopyWithImpl<$Res>;
}

class _$EditBarterItemStateInitialCopyWithImpl<$Res>
    extends _$EditBarterItemStateCopyWithImpl<$Res>
    implements $EditBarterItemStateInitialCopyWith<$Res> {
  _$EditBarterItemStateInitialCopyWithImpl(EditBarterItemStateInitial _value,
      $Res Function(EditBarterItemStateInitial) _then)
      : super(_value, (v) => _then(v as EditBarterItemStateInitial));

  @override
  EditBarterItemStateInitial get _value =>
      super._value as EditBarterItemStateInitial;
}

class _$EditBarterItemStateInitial implements EditBarterItemStateInitial {
  const _$EditBarterItemStateInitial();

  @override
  String toString() {
    return 'EditBarterItemState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EditBarterItemStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
  }) {
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
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
    @required Result initial(EditBarterItemStateInitial value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EditBarterItemStateInitial value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EditBarterItemStateInitial implements EditBarterItemState {
  const factory EditBarterItemStateInitial() = _$EditBarterItemStateInitial;
}
