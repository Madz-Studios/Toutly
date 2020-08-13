// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MessagesEventTearOff {
  const _$MessagesEventTearOff();

  MessagesEventInit init() {
    return const MessagesEventInit();
  }

  MessagesEventGetAllUserMessages getAllUserMessages(String userId) {
    return MessagesEventGetAllUserMessages(
      userId,
    );
  }
}

// ignore: unused_element
const $MessagesEvent = _$MessagesEventTearOff();

mixin _$MessagesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result getAllUserMessages(String userId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result getAllUserMessages(String userId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(MessagesEventInit value),
    @required Result getAllUserMessages(MessagesEventGetAllUserMessages value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(MessagesEventInit value),
    Result getAllUserMessages(MessagesEventGetAllUserMessages value),
    @required Result orElse(),
  });
}

abstract class $MessagesEventCopyWith<$Res> {
  factory $MessagesEventCopyWith(
          MessagesEvent value, $Res Function(MessagesEvent) then) =
      _$MessagesEventCopyWithImpl<$Res>;
}

class _$MessagesEventCopyWithImpl<$Res>
    implements $MessagesEventCopyWith<$Res> {
  _$MessagesEventCopyWithImpl(this._value, this._then);

  final MessagesEvent _value;
  // ignore: unused_field
  final $Res Function(MessagesEvent) _then;
}

abstract class $MessagesEventInitCopyWith<$Res> {
  factory $MessagesEventInitCopyWith(
          MessagesEventInit value, $Res Function(MessagesEventInit) then) =
      _$MessagesEventInitCopyWithImpl<$Res>;
}

class _$MessagesEventInitCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res>
    implements $MessagesEventInitCopyWith<$Res> {
  _$MessagesEventInitCopyWithImpl(
      MessagesEventInit _value, $Res Function(MessagesEventInit) _then)
      : super(_value, (v) => _then(v as MessagesEventInit));

  @override
  MessagesEventInit get _value => super._value as MessagesEventInit;
}

class _$MessagesEventInit implements MessagesEventInit {
  const _$MessagesEventInit();

  @override
  String toString() {
    return 'MessagesEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MessagesEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result getAllUserMessages(String userId),
  }) {
    assert(init != null);
    assert(getAllUserMessages != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result getAllUserMessages(String userId),
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
    @required Result init(MessagesEventInit value),
    @required Result getAllUserMessages(MessagesEventGetAllUserMessages value),
  }) {
    assert(init != null);
    assert(getAllUserMessages != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(MessagesEventInit value),
    Result getAllUserMessages(MessagesEventGetAllUserMessages value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class MessagesEventInit implements MessagesEvent {
  const factory MessagesEventInit() = _$MessagesEventInit;
}

abstract class $MessagesEventGetAllUserMessagesCopyWith<$Res> {
  factory $MessagesEventGetAllUserMessagesCopyWith(
          MessagesEventGetAllUserMessages value,
          $Res Function(MessagesEventGetAllUserMessages) then) =
      _$MessagesEventGetAllUserMessagesCopyWithImpl<$Res>;
  $Res call({String userId});
}

class _$MessagesEventGetAllUserMessagesCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res>
    implements $MessagesEventGetAllUserMessagesCopyWith<$Res> {
  _$MessagesEventGetAllUserMessagesCopyWithImpl(
      MessagesEventGetAllUserMessages _value,
      $Res Function(MessagesEventGetAllUserMessages) _then)
      : super(_value, (v) => _then(v as MessagesEventGetAllUserMessages));

  @override
  MessagesEventGetAllUserMessages get _value =>
      super._value as MessagesEventGetAllUserMessages;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(MessagesEventGetAllUserMessages(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

class _$MessagesEventGetAllUserMessages
    implements MessagesEventGetAllUserMessages {
  const _$MessagesEventGetAllUserMessages(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'MessagesEvent.getAllUserMessages(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessagesEventGetAllUserMessages &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @override
  $MessagesEventGetAllUserMessagesCopyWith<MessagesEventGetAllUserMessages>
      get copyWith => _$MessagesEventGetAllUserMessagesCopyWithImpl<
          MessagesEventGetAllUserMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result getAllUserMessages(String userId),
  }) {
    assert(init != null);
    assert(getAllUserMessages != null);
    return getAllUserMessages(userId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result getAllUserMessages(String userId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllUserMessages != null) {
      return getAllUserMessages(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(MessagesEventInit value),
    @required Result getAllUserMessages(MessagesEventGetAllUserMessages value),
  }) {
    assert(init != null);
    assert(getAllUserMessages != null);
    return getAllUserMessages(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(MessagesEventInit value),
    Result getAllUserMessages(MessagesEventGetAllUserMessages value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllUserMessages != null) {
      return getAllUserMessages(this);
    }
    return orElse();
  }
}

abstract class MessagesEventGetAllUserMessages implements MessagesEvent {
  const factory MessagesEventGetAllUserMessages(String userId) =
      _$MessagesEventGetAllUserMessages;

  String get userId;
  $MessagesEventGetAllUserMessagesCopyWith<MessagesEventGetAllUserMessages>
      get copyWith;
}

class _$MessagesStateTearOff {
  const _$MessagesStateTearOff();

  _MessagesState call(
      {@required Future<List<BarterMessageModel>> barterMessages,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _MessagesState(
      barterMessages: barterMessages,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $MessagesState = _$MessagesStateTearOff();

mixin _$MessagesState {
  Future<List<BarterMessageModel>> get barterMessages;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $MessagesStateCopyWith<MessagesState> get copyWith;
}

abstract class $MessagesStateCopyWith<$Res> {
  factory $MessagesStateCopyWith(
          MessagesState value, $Res Function(MessagesState) then) =
      _$MessagesStateCopyWithImpl<$Res>;
  $Res call(
      {Future<List<BarterMessageModel>> barterMessages,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$MessagesStateCopyWithImpl<$Res>
    implements $MessagesStateCopyWith<$Res> {
  _$MessagesStateCopyWithImpl(this._value, this._then);

  final MessagesState _value;
  // ignore: unused_field
  final $Res Function(MessagesState) _then;

  @override
  $Res call({
    Object barterMessages = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      barterMessages: barterMessages == freezed
          ? _value.barterMessages
          : barterMessages as Future<List<BarterMessageModel>>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$MessagesStateCopyWith<$Res>
    implements $MessagesStateCopyWith<$Res> {
  factory _$MessagesStateCopyWith(
          _MessagesState value, $Res Function(_MessagesState) then) =
      __$MessagesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Future<List<BarterMessageModel>> barterMessages,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$MessagesStateCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res>
    implements _$MessagesStateCopyWith<$Res> {
  __$MessagesStateCopyWithImpl(
      _MessagesState _value, $Res Function(_MessagesState) _then)
      : super(_value, (v) => _then(v as _MessagesState));

  @override
  _MessagesState get _value => super._value as _MessagesState;

  @override
  $Res call({
    Object barterMessages = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_MessagesState(
      barterMessages: barterMessages == freezed
          ? _value.barterMessages
          : barterMessages as Future<List<BarterMessageModel>>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_MessagesState implements _MessagesState {
  const _$_MessagesState(
      {@required this.barterMessages,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(barterMessages != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

  @override
  final Future<List<BarterMessageModel>> barterMessages;
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
    return 'MessagesState(barterMessages: $barterMessages, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessagesState &&
            (identical(other.barterMessages, barterMessages) ||
                const DeepCollectionEquality()
                    .equals(other.barterMessages, barterMessages)) &&
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
      const DeepCollectionEquality().hash(barterMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$MessagesStateCopyWith<_MessagesState> get copyWith =>
      __$MessagesStateCopyWithImpl<_MessagesState>(this, _$identity);
}

abstract class _MessagesState implements MessagesState {
  const factory _MessagesState(
      {@required Future<List<BarterMessageModel>> barterMessages,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_MessagesState;

  @override
  Future<List<BarterMessageModel>> get barterMessages;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$MessagesStateCopyWith<_MessagesState> get copyWith;
}
