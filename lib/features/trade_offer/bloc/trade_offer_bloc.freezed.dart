// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'trade_offer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TradeOfferEventTearOff {
  const _$TradeOfferEventTearOff();

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

  TradeOfferMessageChanged messageChanged({String message}) {
    return TradeOfferMessageChanged(
      message: message,
    );
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
    @required Result addItemToTrade(BarterModel barterModel),
    @required Result removeItemToTrade(BarterModel barterModel),
    @required Result clearItemToTrade(),
    @required Result messageChanged(String message),
    @required Result submitButtonOfferPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addItemToTrade(BarterModel barterModel),
    Result removeItemToTrade(BarterModel barterModel),
    Result clearItemToTrade(),
    Result messageChanged(String message),
    Result submitButtonOfferPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addItemToTrade(TradeOfferAddItemToTrade value),
    @required Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    @required Result clearItemToTrade(TradeOfferClearItemToTrade value),
    @required Result messageChanged(TradeOfferMessageChanged value),
    @required
        Result submitButtonOfferPressed(
            TradeOfferEventSubmitButtonOfferPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addItemToTrade(TradeOfferAddItemToTrade value),
    Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    Result clearItemToTrade(TradeOfferClearItemToTrade value),
    Result messageChanged(TradeOfferMessageChanged value),
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
    @required Result addItemToTrade(BarterModel barterModel),
    @required Result removeItemToTrade(BarterModel barterModel),
    @required Result clearItemToTrade(),
    @required Result messageChanged(String message),
    @required Result submitButtonOfferPressed(),
  }) {
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(messageChanged != null);
    assert(submitButtonOfferPressed != null);
    return addItemToTrade(barterModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addItemToTrade(BarterModel barterModel),
    Result removeItemToTrade(BarterModel barterModel),
    Result clearItemToTrade(),
    Result messageChanged(String message),
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
    @required Result addItemToTrade(TradeOfferAddItemToTrade value),
    @required Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    @required Result clearItemToTrade(TradeOfferClearItemToTrade value),
    @required Result messageChanged(TradeOfferMessageChanged value),
    @required
        Result submitButtonOfferPressed(
            TradeOfferEventSubmitButtonOfferPressed value),
  }) {
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(messageChanged != null);
    assert(submitButtonOfferPressed != null);
    return addItemToTrade(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addItemToTrade(TradeOfferAddItemToTrade value),
    Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    Result clearItemToTrade(TradeOfferClearItemToTrade value),
    Result messageChanged(TradeOfferMessageChanged value),
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
    @required Result addItemToTrade(BarterModel barterModel),
    @required Result removeItemToTrade(BarterModel barterModel),
    @required Result clearItemToTrade(),
    @required Result messageChanged(String message),
    @required Result submitButtonOfferPressed(),
  }) {
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(messageChanged != null);
    assert(submitButtonOfferPressed != null);
    return removeItemToTrade(barterModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addItemToTrade(BarterModel barterModel),
    Result removeItemToTrade(BarterModel barterModel),
    Result clearItemToTrade(),
    Result messageChanged(String message),
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
    @required Result addItemToTrade(TradeOfferAddItemToTrade value),
    @required Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    @required Result clearItemToTrade(TradeOfferClearItemToTrade value),
    @required Result messageChanged(TradeOfferMessageChanged value),
    @required
        Result submitButtonOfferPressed(
            TradeOfferEventSubmitButtonOfferPressed value),
  }) {
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(messageChanged != null);
    assert(submitButtonOfferPressed != null);
    return removeItemToTrade(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addItemToTrade(TradeOfferAddItemToTrade value),
    Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    Result clearItemToTrade(TradeOfferClearItemToTrade value),
    Result messageChanged(TradeOfferMessageChanged value),
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
    @required Result addItemToTrade(BarterModel barterModel),
    @required Result removeItemToTrade(BarterModel barterModel),
    @required Result clearItemToTrade(),
    @required Result messageChanged(String message),
    @required Result submitButtonOfferPressed(),
  }) {
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(messageChanged != null);
    assert(submitButtonOfferPressed != null);
    return clearItemToTrade();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addItemToTrade(BarterModel barterModel),
    Result removeItemToTrade(BarterModel barterModel),
    Result clearItemToTrade(),
    Result messageChanged(String message),
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
    @required Result addItemToTrade(TradeOfferAddItemToTrade value),
    @required Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    @required Result clearItemToTrade(TradeOfferClearItemToTrade value),
    @required Result messageChanged(TradeOfferMessageChanged value),
    @required
        Result submitButtonOfferPressed(
            TradeOfferEventSubmitButtonOfferPressed value),
  }) {
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(messageChanged != null);
    assert(submitButtonOfferPressed != null);
    return clearItemToTrade(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addItemToTrade(TradeOfferAddItemToTrade value),
    Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    Result clearItemToTrade(TradeOfferClearItemToTrade value),
    Result messageChanged(TradeOfferMessageChanged value),
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

abstract class $TradeOfferMessageChangedCopyWith<$Res> {
  factory $TradeOfferMessageChangedCopyWith(TradeOfferMessageChanged value,
          $Res Function(TradeOfferMessageChanged) then) =
      _$TradeOfferMessageChangedCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$TradeOfferMessageChangedCopyWithImpl<$Res>
    extends _$TradeOfferEventCopyWithImpl<$Res>
    implements $TradeOfferMessageChangedCopyWith<$Res> {
  _$TradeOfferMessageChangedCopyWithImpl(TradeOfferMessageChanged _value,
      $Res Function(TradeOfferMessageChanged) _then)
      : super(_value, (v) => _then(v as TradeOfferMessageChanged));

  @override
  TradeOfferMessageChanged get _value =>
      super._value as TradeOfferMessageChanged;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(TradeOfferMessageChanged(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$TradeOfferMessageChanged implements TradeOfferMessageChanged {
  const _$TradeOfferMessageChanged({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TradeOfferEvent.messageChanged(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TradeOfferMessageChanged &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $TradeOfferMessageChangedCopyWith<TradeOfferMessageChanged> get copyWith =>
      _$TradeOfferMessageChangedCopyWithImpl<TradeOfferMessageChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addItemToTrade(BarterModel barterModel),
    @required Result removeItemToTrade(BarterModel barterModel),
    @required Result clearItemToTrade(),
    @required Result messageChanged(String message),
    @required Result submitButtonOfferPressed(),
  }) {
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(messageChanged != null);
    assert(submitButtonOfferPressed != null);
    return messageChanged(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addItemToTrade(BarterModel barterModel),
    Result removeItemToTrade(BarterModel barterModel),
    Result clearItemToTrade(),
    Result messageChanged(String message),
    Result submitButtonOfferPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageChanged != null) {
      return messageChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addItemToTrade(TradeOfferAddItemToTrade value),
    @required Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    @required Result clearItemToTrade(TradeOfferClearItemToTrade value),
    @required Result messageChanged(TradeOfferMessageChanged value),
    @required
        Result submitButtonOfferPressed(
            TradeOfferEventSubmitButtonOfferPressed value),
  }) {
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(messageChanged != null);
    assert(submitButtonOfferPressed != null);
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addItemToTrade(TradeOfferAddItemToTrade value),
    Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    Result clearItemToTrade(TradeOfferClearItemToTrade value),
    Result messageChanged(TradeOfferMessageChanged value),
    Result submitButtonOfferPressed(
        TradeOfferEventSubmitButtonOfferPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class TradeOfferMessageChanged implements TradeOfferEvent {
  const factory TradeOfferMessageChanged({String message}) =
      _$TradeOfferMessageChanged;

  String get message;
  $TradeOfferMessageChangedCopyWith<TradeOfferMessageChanged> get copyWith;
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
    @required Result addItemToTrade(BarterModel barterModel),
    @required Result removeItemToTrade(BarterModel barterModel),
    @required Result clearItemToTrade(),
    @required Result messageChanged(String message),
    @required Result submitButtonOfferPressed(),
  }) {
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(messageChanged != null);
    assert(submitButtonOfferPressed != null);
    return submitButtonOfferPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addItemToTrade(BarterModel barterModel),
    Result removeItemToTrade(BarterModel barterModel),
    Result clearItemToTrade(),
    Result messageChanged(String message),
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
    @required Result addItemToTrade(TradeOfferAddItemToTrade value),
    @required Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    @required Result clearItemToTrade(TradeOfferClearItemToTrade value),
    @required Result messageChanged(TradeOfferMessageChanged value),
    @required
        Result submitButtonOfferPressed(
            TradeOfferEventSubmitButtonOfferPressed value),
  }) {
    assert(addItemToTrade != null);
    assert(removeItemToTrade != null);
    assert(clearItemToTrade != null);
    assert(messageChanged != null);
    assert(submitButtonOfferPressed != null);
    return submitButtonOfferPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addItemToTrade(TradeOfferAddItemToTrade value),
    Result removeItemToTrade(TradeOfferRemovetemToTrade value),
    Result clearItemToTrade(TradeOfferClearItemToTrade value),
    Result messageChanged(TradeOfferMessageChanged value),
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
      @required bool isMessageValid,
      @required bool isUpdating,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _TradeOfferState(
      pickedBarterItem: pickedBarterItem,
      isMessageValid: isMessageValid,
      isUpdating: isUpdating,
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
  bool get isMessageValid;
  bool get isUpdating;
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
      bool isMessageValid,
      bool isUpdating,
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
    Object isMessageValid = freezed,
    Object isUpdating = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      pickedBarterItem: pickedBarterItem == freezed
          ? _value.pickedBarterItem
          : pickedBarterItem as Map<String, BarterModel>,
      isMessageValid: isMessageValid == freezed
          ? _value.isMessageValid
          : isMessageValid as bool,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
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
      bool isMessageValid,
      bool isUpdating,
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
    Object isMessageValid = freezed,
    Object isUpdating = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_TradeOfferState(
      pickedBarterItem: pickedBarterItem == freezed
          ? _value.pickedBarterItem
          : pickedBarterItem as Map<String, BarterModel>,
      isMessageValid: isMessageValid == freezed
          ? _value.isMessageValid
          : isMessageValid as bool,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
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
      @required this.isMessageValid,
      @required this.isUpdating,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(pickedBarterItem != null),
        assert(isMessageValid != null),
        assert(isUpdating != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null),
        super._();

  @override
  final Map<String, BarterModel> pickedBarterItem;
  @override
  final bool isMessageValid;
  @override
  final bool isUpdating;
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
    return 'TradeOfferState(pickedBarterItem: $pickedBarterItem, isMessageValid: $isMessageValid, isUpdating: $isUpdating, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TradeOfferState &&
            (identical(other.pickedBarterItem, pickedBarterItem) ||
                const DeepCollectionEquality()
                    .equals(other.pickedBarterItem, pickedBarterItem)) &&
            (identical(other.isMessageValid, isMessageValid) ||
                const DeepCollectionEquality()
                    .equals(other.isMessageValid, isMessageValid)) &&
            (identical(other.isUpdating, isUpdating) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdating, isUpdating)) &&
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
      const DeepCollectionEquality().hash(isMessageValid) ^
      const DeepCollectionEquality().hash(isUpdating) ^
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
      @required bool isMessageValid,
      @required bool isUpdating,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_TradeOfferState;

  @override
  Map<String, BarterModel> get pickedBarterItem;
  @override
  bool get isMessageValid;
  @override
  bool get isUpdating;
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
