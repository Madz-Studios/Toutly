// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'trade_offer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TradeOfferEventTearOff {
  const _$TradeOfferEventTearOff();

  TradeOfferEventInitial initial() {
    return const TradeOfferEventInitial();
  }

  TradeOfferAddItemToTrade addItemToTrade(BarterModel barterModel) {
    return TradeOfferAddItemToTrade(
      barterModel,
    );
  }

  TradeOfferRemovetemToTrade removeItemToTrade(BarterModel barterModel) {
    return TradeOfferRemovetemToTrade(
      barterModel,
    );
  }

  TradeOfferClearItemToTrade clearItemToTrade() {
    return const TradeOfferClearItemToTrade();
  }

  TradeOfferEventSubmitButtonOfferPressed submitButtonOfferPressed() {
    return const TradeOfferEventSubmitButtonOfferPressed();
  }
}

// ignore: unused_element
const $TradeOfferEvent = _$TradeOfferEventTearOff();

mixin _$TradeOfferEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addItemToTrade(BarterModel barterModel),
    @required Result removeItemToTrade(BarterModel barterModel),
    @required Result clearItemToTrade(),
    @required Result submitButtonOfferPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addItemToTrade(BarterModel barterModel),
    Result removeItemToTrade(BarterModel barterModel),
    Result clearItemToTrade(),
    Result submitButtonOfferPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(TradeOfferEventInitial value),
    @required Result addItemToTrade(TradeOfferAddItemToTrade value),
    @required Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    @required Result clearItemToTrade(TradeOfferClearItemToTrade value),
    @required
        Result submitButtonOfferPressed(
            TradeOfferEventSubmitButtonOfferPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(TradeOfferEventInitial value),
    Result addItemToTrade(TradeOfferAddItemToTrade value),
    Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    Result clearItemToTrade(TradeOfferClearItemToTrade value),
    Result submitButtonOfferPressed(
        TradeOfferEventSubmitButtonOfferPressed value),
    @required Result orElse(),
  });
}

abstract class $TradeOfferEventCopyWith<$Res> {
  factory $TradeOfferEventCopyWith(
          TradeOfferEvent value, $Res Function(TradeOfferEvent) then) =
      _$TradeOfferEventCopyWithImpl<$Res>;
}

class _$TradeOfferEventCopyWithImpl<$Res>
    implements $TradeOfferEventCopyWith<$Res> {
  _$TradeOfferEventCopyWithImpl(this._value, this._then);

  final TradeOfferEvent _value;
  // ignore: unused_field
  final $Res Function(TradeOfferEvent) _then;
}

abstract class $TradeOfferEventInitialCopyWith<$Res> {
  factory $TradeOfferEventInitialCopyWith(TradeOfferEventInitial value,
          $Res Function(TradeOfferEventInitial) then) =
      _$TradeOfferEventInitialCopyWithImpl<$Res>;
}

class _$TradeOfferEventInitialCopyWithImpl<$Res>
    extends _$TradeOfferEventCopyWithImpl<$Res>
    implements $TradeOfferEventInitialCopyWith<$Res> {
  _$TradeOfferEventInitialCopyWithImpl(TradeOfferEventInitial _value,
      $Res Function(TradeOfferEventInitial) _then)
      : super(_value, (v) => _then(v as TradeOfferEventInitial));

  @override
  TradeOfferEventInitial get _value => super._value as TradeOfferEventInitial;
}

class _$TradeOfferEventInitial implements TradeOfferEventInitial {
  const _$TradeOfferEventInitial();

  @override
  String toString() {
    return 'TradeOfferEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TradeOfferEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addItemToTrade(BarterModel barterModel),
    @required Result removeItemToTrade(BarterModel barterModel),
    @required Result clearItemToTrade(),
    @required Result submitButtonOfferPressed(),
  }) {
    assert(initial != null);
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(submitButtonOfferPressed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addItemToTrade(BarterModel barterModel),
    Result removeItemToTrade(BarterModel barterModel),
    Result clearItemToTrade(),
    Result submitButtonOfferPressed(),
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
    @required Result initial(TradeOfferEventInitial value),
    @required Result addItemToTrade(TradeOfferAddItemToTrade value),
    @required Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    @required Result clearItemToTrade(TradeOfferClearItemToTrade value),
    @required
        Result submitButtonOfferPressed(
            TradeOfferEventSubmitButtonOfferPressed value),
  }) {
    assert(initial != null);
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(submitButtonOfferPressed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(TradeOfferEventInitial value),
    Result addItemToTrade(TradeOfferAddItemToTrade value),
    Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    Result clearItemToTrade(TradeOfferClearItemToTrade value),
    Result submitButtonOfferPressed(
        TradeOfferEventSubmitButtonOfferPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TradeOfferEventInitial implements TradeOfferEvent {
  const factory TradeOfferEventInitial() = _$TradeOfferEventInitial;
}

abstract class $TradeOfferAddItemToTradeCopyWith<$Res> {
  factory $TradeOfferAddItemToTradeCopyWith(TradeOfferAddItemToTrade value,
          $Res Function(TradeOfferAddItemToTrade) then) =
      _$TradeOfferAddItemToTradeCopyWithImpl<$Res>;
  $Res call({BarterModel barterModel});
}

class _$TradeOfferAddItemToTradeCopyWithImpl<$Res>
    extends _$TradeOfferEventCopyWithImpl<$Res>
    implements $TradeOfferAddItemToTradeCopyWith<$Res> {
  _$TradeOfferAddItemToTradeCopyWithImpl(TradeOfferAddItemToTrade _value,
      $Res Function(TradeOfferAddItemToTrade) _then)
      : super(_value, (v) => _then(v as TradeOfferAddItemToTrade));

  @override
  TradeOfferAddItemToTrade get _value =>
      super._value as TradeOfferAddItemToTrade;

  @override
  $Res call({
    Object barterModel = freezed,
  }) {
    return _then(TradeOfferAddItemToTrade(
      barterModel == freezed ? _value.barterModel : barterModel as BarterModel,
    ));
  }
}

class _$TradeOfferAddItemToTrade implements TradeOfferAddItemToTrade {
  const _$TradeOfferAddItemToTrade(this.barterModel)
      : assert(barterModel != null);

  @override
  final BarterModel barterModel;

  @override
  String toString() {
    return 'TradeOfferEvent.addItemToTrade(barterModel: $barterModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TradeOfferAddItemToTrade &&
            (identical(other.barterModel, barterModel) ||
                const DeepCollectionEquality()
                    .equals(other.barterModel, barterModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(barterModel);

  @override
  $TradeOfferAddItemToTradeCopyWith<TradeOfferAddItemToTrade> get copyWith =>
      _$TradeOfferAddItemToTradeCopyWithImpl<TradeOfferAddItemToTrade>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addItemToTrade(BarterModel barterModel),
    @required Result removeItemToTrade(BarterModel barterModel),
    @required Result clearItemToTrade(),
    @required Result submitButtonOfferPressed(),
  }) {
    assert(initial != null);
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(submitButtonOfferPressed != null);
    return addItemToTrade(barterModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addItemToTrade(BarterModel barterModel),
    Result removeItemToTrade(BarterModel barterModel),
    Result clearItemToTrade(),
    Result submitButtonOfferPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addItemToTrade != null) {
      return addItemToTrade(barterModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(TradeOfferEventInitial value),
    @required Result addItemToTrade(TradeOfferAddItemToTrade value),
    @required Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    @required Result clearItemToTrade(TradeOfferClearItemToTrade value),
    @required
        Result submitButtonOfferPressed(
            TradeOfferEventSubmitButtonOfferPressed value),
  }) {
    assert(initial != null);
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(submitButtonOfferPressed != null);
    return addItemToTrade(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(TradeOfferEventInitial value),
    Result addItemToTrade(TradeOfferAddItemToTrade value),
    Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    Result clearItemToTrade(TradeOfferClearItemToTrade value),
    Result submitButtonOfferPressed(
        TradeOfferEventSubmitButtonOfferPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addItemToTrade != null) {
      return addItemToTrade(this);
    }
    return orElse();
  }
}

abstract class TradeOfferAddItemToTrade implements TradeOfferEvent {
  const factory TradeOfferAddItemToTrade(BarterModel barterModel) =
      _$TradeOfferAddItemToTrade;

  BarterModel get barterModel;
  $TradeOfferAddItemToTradeCopyWith<TradeOfferAddItemToTrade> get copyWith;
}

abstract class $TradeOfferRemovetemToTradeCopyWith<$Res> {
  factory $TradeOfferRemovetemToTradeCopyWith(TradeOfferRemovetemToTrade value,
          $Res Function(TradeOfferRemovetemToTrade) then) =
      _$TradeOfferRemovetemToTradeCopyWithImpl<$Res>;
  $Res call({BarterModel barterModel});
}

class _$TradeOfferRemovetemToTradeCopyWithImpl<$Res>
    extends _$TradeOfferEventCopyWithImpl<$Res>
    implements $TradeOfferRemovetemToTradeCopyWith<$Res> {
  _$TradeOfferRemovetemToTradeCopyWithImpl(TradeOfferRemovetemToTrade _value,
      $Res Function(TradeOfferRemovetemToTrade) _then)
      : super(_value, (v) => _then(v as TradeOfferRemovetemToTrade));

  @override
  TradeOfferRemovetemToTrade get _value =>
      super._value as TradeOfferRemovetemToTrade;

  @override
  $Res call({
    Object barterModel = freezed,
  }) {
    return _then(TradeOfferRemovetemToTrade(
      barterModel == freezed ? _value.barterModel : barterModel as BarterModel,
    ));
  }
}

class _$TradeOfferRemovetemToTrade implements TradeOfferRemovetemToTrade {
  const _$TradeOfferRemovetemToTrade(this.barterModel)
      : assert(barterModel != null);

  @override
  final BarterModel barterModel;

  @override
  String toString() {
    return 'TradeOfferEvent.removeItemToTrade(barterModel: $barterModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TradeOfferRemovetemToTrade &&
            (identical(other.barterModel, barterModel) ||
                const DeepCollectionEquality()
                    .equals(other.barterModel, barterModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(barterModel);

  @override
  $TradeOfferRemovetemToTradeCopyWith<TradeOfferRemovetemToTrade>
      get copyWith =>
          _$TradeOfferRemovetemToTradeCopyWithImpl<TradeOfferRemovetemToTrade>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addItemToTrade(BarterModel barterModel),
    @required Result removeItemToTrade(BarterModel barterModel),
    @required Result clearItemToTrade(),
    @required Result submitButtonOfferPressed(),
  }) {
    assert(initial != null);
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(submitButtonOfferPressed != null);
    return removeItemToTrade(barterModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addItemToTrade(BarterModel barterModel),
    Result removeItemToTrade(BarterModel barterModel),
    Result clearItemToTrade(),
    Result submitButtonOfferPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeItemToTrade != null) {
      return removeItemToTrade(barterModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(TradeOfferEventInitial value),
    @required Result addItemToTrade(TradeOfferAddItemToTrade value),
    @required Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    @required Result clearItemToTrade(TradeOfferClearItemToTrade value),
    @required
        Result submitButtonOfferPressed(
            TradeOfferEventSubmitButtonOfferPressed value),
  }) {
    assert(initial != null);
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(submitButtonOfferPressed != null);
    return removeItemToTrade(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(TradeOfferEventInitial value),
    Result addItemToTrade(TradeOfferAddItemToTrade value),
    Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    Result clearItemToTrade(TradeOfferClearItemToTrade value),
    Result submitButtonOfferPressed(
        TradeOfferEventSubmitButtonOfferPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeItemToTrade != null) {
      return removeItemToTrade(this);
    }
    return orElse();
  }
}

abstract class TradeOfferRemovetemToTrade implements TradeOfferEvent {
  const factory TradeOfferRemovetemToTrade(BarterModel barterModel) =
      _$TradeOfferRemovetemToTrade;

  BarterModel get barterModel;
  $TradeOfferRemovetemToTradeCopyWith<TradeOfferRemovetemToTrade> get copyWith;
}

abstract class $TradeOfferClearItemToTradeCopyWith<$Res> {
  factory $TradeOfferClearItemToTradeCopyWith(TradeOfferClearItemToTrade value,
          $Res Function(TradeOfferClearItemToTrade) then) =
      _$TradeOfferClearItemToTradeCopyWithImpl<$Res>;
}

class _$TradeOfferClearItemToTradeCopyWithImpl<$Res>
    extends _$TradeOfferEventCopyWithImpl<$Res>
    implements $TradeOfferClearItemToTradeCopyWith<$Res> {
  _$TradeOfferClearItemToTradeCopyWithImpl(TradeOfferClearItemToTrade _value,
      $Res Function(TradeOfferClearItemToTrade) _then)
      : super(_value, (v) => _then(v as TradeOfferClearItemToTrade));

  @override
  TradeOfferClearItemToTrade get _value =>
      super._value as TradeOfferClearItemToTrade;
}

class _$TradeOfferClearItemToTrade implements TradeOfferClearItemToTrade {
  const _$TradeOfferClearItemToTrade();

  @override
  String toString() {
    return 'TradeOfferEvent.clearItemToTrade()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TradeOfferClearItemToTrade);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addItemToTrade(BarterModel barterModel),
    @required Result removeItemToTrade(BarterModel barterModel),
    @required Result clearItemToTrade(),
    @required Result submitButtonOfferPressed(),
  }) {
    assert(initial != null);
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(submitButtonOfferPressed != null);
    return clearItemToTrade();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addItemToTrade(BarterModel barterModel),
    Result removeItemToTrade(BarterModel barterModel),
    Result clearItemToTrade(),
    Result submitButtonOfferPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clearItemToTrade != null) {
      return clearItemToTrade();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(TradeOfferEventInitial value),
    @required Result addItemToTrade(TradeOfferAddItemToTrade value),
    @required Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    @required Result clearItemToTrade(TradeOfferClearItemToTrade value),
    @required
        Result submitButtonOfferPressed(
            TradeOfferEventSubmitButtonOfferPressed value),
  }) {
    assert(initial != null);
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(submitButtonOfferPressed != null);
    return clearItemToTrade(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(TradeOfferEventInitial value),
    Result addItemToTrade(TradeOfferAddItemToTrade value),
    Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    Result clearItemToTrade(TradeOfferClearItemToTrade value),
    Result submitButtonOfferPressed(
        TradeOfferEventSubmitButtonOfferPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clearItemToTrade != null) {
      return clearItemToTrade(this);
    }
    return orElse();
  }
}

abstract class TradeOfferClearItemToTrade implements TradeOfferEvent {
  const factory TradeOfferClearItemToTrade() = _$TradeOfferClearItemToTrade;
}

abstract class $TradeOfferEventSubmitButtonOfferPressedCopyWith<$Res> {
  factory $TradeOfferEventSubmitButtonOfferPressedCopyWith(
          TradeOfferEventSubmitButtonOfferPressed value,
          $Res Function(TradeOfferEventSubmitButtonOfferPressed) then) =
      _$TradeOfferEventSubmitButtonOfferPressedCopyWithImpl<$Res>;
}

class _$TradeOfferEventSubmitButtonOfferPressedCopyWithImpl<$Res>
    extends _$TradeOfferEventCopyWithImpl<$Res>
    implements $TradeOfferEventSubmitButtonOfferPressedCopyWith<$Res> {
  _$TradeOfferEventSubmitButtonOfferPressedCopyWithImpl(
      TradeOfferEventSubmitButtonOfferPressed _value,
      $Res Function(TradeOfferEventSubmitButtonOfferPressed) _then)
      : super(
            _value, (v) => _then(v as TradeOfferEventSubmitButtonOfferPressed));

  @override
  TradeOfferEventSubmitButtonOfferPressed get _value =>
      super._value as TradeOfferEventSubmitButtonOfferPressed;
}

class _$TradeOfferEventSubmitButtonOfferPressed
    implements TradeOfferEventSubmitButtonOfferPressed {
  const _$TradeOfferEventSubmitButtonOfferPressed();

  @override
  String toString() {
    return 'TradeOfferEvent.submitButtonOfferPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TradeOfferEventSubmitButtonOfferPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result addItemToTrade(BarterModel barterModel),
    @required Result removeItemToTrade(BarterModel barterModel),
    @required Result clearItemToTrade(),
    @required Result submitButtonOfferPressed(),
  }) {
    assert(initial != null);
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(submitButtonOfferPressed != null);
    return submitButtonOfferPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result addItemToTrade(BarterModel barterModel),
    Result removeItemToTrade(BarterModel barterModel),
    Result clearItemToTrade(),
    Result submitButtonOfferPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitButtonOfferPressed != null) {
      return submitButtonOfferPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(TradeOfferEventInitial value),
    @required Result addItemToTrade(TradeOfferAddItemToTrade value),
    @required Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    @required Result clearItemToTrade(TradeOfferClearItemToTrade value),
    @required
        Result submitButtonOfferPressed(
            TradeOfferEventSubmitButtonOfferPressed value),
  }) {
    assert(initial != null);
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(submitButtonOfferPressed != null);
    return submitButtonOfferPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(TradeOfferEventInitial value),
    Result addItemToTrade(TradeOfferAddItemToTrade value),
    Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    Result clearItemToTrade(TradeOfferClearItemToTrade value),
    Result submitButtonOfferPressed(
        TradeOfferEventSubmitButtonOfferPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitButtonOfferPressed != null) {
      return submitButtonOfferPressed(this);
    }
    return orElse();
  }
}

abstract class TradeOfferEventSubmitButtonOfferPressed
    implements TradeOfferEvent {
  const factory TradeOfferEventSubmitButtonOfferPressed() =
      _$TradeOfferEventSubmitButtonOfferPressed;
}

class _$TradeOfferStateTearOff {
  const _$TradeOfferStateTearOff();

  _TradeOfferState call(
      {@required Map<String, BarterModel> pickedBarterItem,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _TradeOfferState(
      pickedBarterItem: pickedBarterItem,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $TradeOfferState = _$TradeOfferStateTearOff();

mixin _$TradeOfferState {
  Map<String, BarterModel> get pickedBarterItem;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $TradeOfferStateCopyWith<TradeOfferState> get copyWith;
}

abstract class $TradeOfferStateCopyWith<$Res> {
  factory $TradeOfferStateCopyWith(
          TradeOfferState value, $Res Function(TradeOfferState) then) =
      _$TradeOfferStateCopyWithImpl<$Res>;
  $Res call(
      {Map<String, BarterModel> pickedBarterItem,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$TradeOfferStateCopyWithImpl<$Res>
    implements $TradeOfferStateCopyWith<$Res> {
  _$TradeOfferStateCopyWithImpl(this._value, this._then);

  final TradeOfferState _value;
  // ignore: unused_field
  final $Res Function(TradeOfferState) _then;

  @override
  $Res call({
    Object pickedBarterItem = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      pickedBarterItem: pickedBarterItem == freezed
          ? _value.pickedBarterItem
          : pickedBarterItem as Map<String, BarterModel>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$TradeOfferStateCopyWith<$Res>
    implements $TradeOfferStateCopyWith<$Res> {
  factory _$TradeOfferStateCopyWith(
          _TradeOfferState value, $Res Function(_TradeOfferState) then) =
      __$TradeOfferStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, BarterModel> pickedBarterItem,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$TradeOfferStateCopyWithImpl<$Res>
    extends _$TradeOfferStateCopyWithImpl<$Res>
    implements _$TradeOfferStateCopyWith<$Res> {
  __$TradeOfferStateCopyWithImpl(
      _TradeOfferState _value, $Res Function(_TradeOfferState) _then)
      : super(_value, (v) => _then(v as _TradeOfferState));

  @override
  _TradeOfferState get _value => super._value as _TradeOfferState;

  @override
  $Res call({
    Object pickedBarterItem = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_TradeOfferState(
      pickedBarterItem: pickedBarterItem == freezed
          ? _value.pickedBarterItem
          : pickedBarterItem as Map<String, BarterModel>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_TradeOfferState extends _TradeOfferState {
  const _$_TradeOfferState(
      {@required this.pickedBarterItem,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(pickedBarterItem != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null),
        super._();

  @override
  final Map<String, BarterModel> pickedBarterItem;
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
    return 'TradeOfferState(pickedBarterItem: $pickedBarterItem, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TradeOfferState &&
            (identical(other.pickedBarterItem, pickedBarterItem) ||
                const DeepCollectionEquality()
                    .equals(other.pickedBarterItem, pickedBarterItem)) &&
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
      const DeepCollectionEquality().hash(pickedBarterItem) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$TradeOfferStateCopyWith<_TradeOfferState> get copyWith =>
      __$TradeOfferStateCopyWithImpl<_TradeOfferState>(this, _$identity);
}

abstract class _TradeOfferState extends TradeOfferState {
  const _TradeOfferState._() : super._();
  const factory _TradeOfferState(
      {@required Map<String, BarterModel> pickedBarterItem,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_TradeOfferState;

  @override
  Map<String, BarterModel> get pickedBarterItem;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$TradeOfferStateCopyWith<_TradeOfferState> get copyWith;
}
