// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'use_case_barter_messages_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UseCaseBarterMessagesModelParamTearOff {
  const _$UseCaseBarterMessagesModelParamTearOff();

// ignore: unused_element
  UseCaseBarterMessagesModelParamInit init(
      {@required BarterMessageModel barterMessageModel}) {
    return UseCaseBarterMessagesModelParamInit(
      barterMessageModel: barterMessageModel,
    );
  }
}

// ignore: unused_element
const $UseCaseBarterMessagesModelParam =
    _$UseCaseBarterMessagesModelParamTearOff();

mixin _$UseCaseBarterMessagesModelParam {
  BarterMessageModel get barterMessageModel;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(BarterMessageModel barterMessageModel),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(BarterMessageModel barterMessageModel),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseBarterMessagesModelParamInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseBarterMessagesModelParamInit value),
    @required Result orElse(),
  });

  $UseCaseBarterMessagesModelParamCopyWith<UseCaseBarterMessagesModelParam>
      get copyWith;
}

abstract class $UseCaseBarterMessagesModelParamCopyWith<$Res> {
  factory $UseCaseBarterMessagesModelParamCopyWith(
          UseCaseBarterMessagesModelParam value,
          $Res Function(UseCaseBarterMessagesModelParam) then) =
      _$UseCaseBarterMessagesModelParamCopyWithImpl<$Res>;
  $Res call({BarterMessageModel barterMessageModel});
}

class _$UseCaseBarterMessagesModelParamCopyWithImpl<$Res>
    implements $UseCaseBarterMessagesModelParamCopyWith<$Res> {
  _$UseCaseBarterMessagesModelParamCopyWithImpl(this._value, this._then);

  final UseCaseBarterMessagesModelParam _value;
  // ignore: unused_field
  final $Res Function(UseCaseBarterMessagesModelParam) _then;

  @override
  $Res call({
    Object barterMessageModel = freezed,
  }) {
    return _then(_value.copyWith(
      barterMessageModel: barterMessageModel == freezed
          ? _value.barterMessageModel
          : barterMessageModel as BarterMessageModel,
    ));
  }
}

abstract class $UseCaseBarterMessagesModelParamInitCopyWith<$Res>
    implements $UseCaseBarterMessagesModelParamCopyWith<$Res> {
  factory $UseCaseBarterMessagesModelParamInitCopyWith(
          UseCaseBarterMessagesModelParamInit value,
          $Res Function(UseCaseBarterMessagesModelParamInit) then) =
      _$UseCaseBarterMessagesModelParamInitCopyWithImpl<$Res>;
  @override
  $Res call({BarterMessageModel barterMessageModel});
}

class _$UseCaseBarterMessagesModelParamInitCopyWithImpl<$Res>
    extends _$UseCaseBarterMessagesModelParamCopyWithImpl<$Res>
    implements $UseCaseBarterMessagesModelParamInitCopyWith<$Res> {
  _$UseCaseBarterMessagesModelParamInitCopyWithImpl(
      UseCaseBarterMessagesModelParamInit _value,
      $Res Function(UseCaseBarterMessagesModelParamInit) _then)
      : super(_value, (v) => _then(v as UseCaseBarterMessagesModelParamInit));

  @override
  UseCaseBarterMessagesModelParamInit get _value =>
      super._value as UseCaseBarterMessagesModelParamInit;

  @override
  $Res call({
    Object barterMessageModel = freezed,
  }) {
    return _then(UseCaseBarterMessagesModelParamInit(
      barterMessageModel: barterMessageModel == freezed
          ? _value.barterMessageModel
          : barterMessageModel as BarterMessageModel,
    ));
  }
}

class _$UseCaseBarterMessagesModelParamInit
    implements UseCaseBarterMessagesModelParamInit {
  const _$UseCaseBarterMessagesModelParamInit(
      {@required this.barterMessageModel})
      : assert(barterMessageModel != null);

  @override
  final BarterMessageModel barterMessageModel;

  @override
  String toString() {
    return 'UseCaseBarterMessagesModelParam.init(barterMessageModel: $barterMessageModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseBarterMessagesModelParamInit &&
            (identical(other.barterMessageModel, barterMessageModel) ||
                const DeepCollectionEquality()
                    .equals(other.barterMessageModel, barterMessageModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(barterMessageModel);

  @override
  $UseCaseBarterMessagesModelParamInitCopyWith<
          UseCaseBarterMessagesModelParamInit>
      get copyWith => _$UseCaseBarterMessagesModelParamInitCopyWithImpl<
          UseCaseBarterMessagesModelParamInit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(BarterMessageModel barterMessageModel),
  }) {
    assert(init != null);
    return init(barterMessageModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(BarterMessageModel barterMessageModel),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(barterMessageModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseBarterMessagesModelParamInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseBarterMessagesModelParamInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UseCaseBarterMessagesModelParamInit
    implements UseCaseBarterMessagesModelParam {
  const factory UseCaseBarterMessagesModelParamInit(
          {@required BarterMessageModel barterMessageModel}) =
      _$UseCaseBarterMessagesModelParamInit;

  @override
  BarterMessageModel get barterMessageModel;
  @override
  $UseCaseBarterMessagesModelParamInitCopyWith<
      UseCaseBarterMessagesModelParamInit> get copyWith;
}

class _$UseCaseAllUserMessagesWithUserIdParamTearOff {
  const _$UseCaseAllUserMessagesWithUserIdParamTearOff();

// ignore: unused_element
  UseCaseAllUserBarterMessagesModelParamInit init({@required String userId}) {
    return UseCaseAllUserBarterMessagesModelParamInit(
      userId: userId,
    );
  }
}

// ignore: unused_element
const $UseCaseAllUserMessagesWithUserIdParam =
    _$UseCaseAllUserMessagesWithUserIdParamTearOff();

mixin _$UseCaseAllUserMessagesWithUserIdParam {
  String get userId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String userId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String userId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseAllUserBarterMessagesModelParamInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseAllUserBarterMessagesModelParamInit value),
    @required Result orElse(),
  });

  $UseCaseAllUserMessagesWithUserIdParamCopyWith<
      UseCaseAllUserMessagesWithUserIdParam> get copyWith;
}

abstract class $UseCaseAllUserMessagesWithUserIdParamCopyWith<$Res> {
  factory $UseCaseAllUserMessagesWithUserIdParamCopyWith(
          UseCaseAllUserMessagesWithUserIdParam value,
          $Res Function(UseCaseAllUserMessagesWithUserIdParam) then) =
      _$UseCaseAllUserMessagesWithUserIdParamCopyWithImpl<$Res>;
  $Res call({String userId});
}

class _$UseCaseAllUserMessagesWithUserIdParamCopyWithImpl<$Res>
    implements $UseCaseAllUserMessagesWithUserIdParamCopyWith<$Res> {
  _$UseCaseAllUserMessagesWithUserIdParamCopyWithImpl(this._value, this._then);

  final UseCaseAllUserMessagesWithUserIdParam _value;
  // ignore: unused_field
  final $Res Function(UseCaseAllUserMessagesWithUserIdParam) _then;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

abstract class $UseCaseAllUserBarterMessagesModelParamInitCopyWith<$Res>
    implements $UseCaseAllUserMessagesWithUserIdParamCopyWith<$Res> {
  factory $UseCaseAllUserBarterMessagesModelParamInitCopyWith(
          UseCaseAllUserBarterMessagesModelParamInit value,
          $Res Function(UseCaseAllUserBarterMessagesModelParamInit) then) =
      _$UseCaseAllUserBarterMessagesModelParamInitCopyWithImpl<$Res>;
  @override
  $Res call({String userId});
}

class _$UseCaseAllUserBarterMessagesModelParamInitCopyWithImpl<$Res>
    extends _$UseCaseAllUserMessagesWithUserIdParamCopyWithImpl<$Res>
    implements $UseCaseAllUserBarterMessagesModelParamInitCopyWith<$Res> {
  _$UseCaseAllUserBarterMessagesModelParamInitCopyWithImpl(
      UseCaseAllUserBarterMessagesModelParamInit _value,
      $Res Function(UseCaseAllUserBarterMessagesModelParamInit) _then)
      : super(_value,
            (v) => _then(v as UseCaseAllUserBarterMessagesModelParamInit));

  @override
  UseCaseAllUserBarterMessagesModelParamInit get _value =>
      super._value as UseCaseAllUserBarterMessagesModelParamInit;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(UseCaseAllUserBarterMessagesModelParamInit(
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

class _$UseCaseAllUserBarterMessagesModelParamInit
    implements UseCaseAllUserBarterMessagesModelParamInit {
  const _$UseCaseAllUserBarterMessagesModelParamInit({@required this.userId})
      : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'UseCaseAllUserMessagesWithUserIdParam.init(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseAllUserBarterMessagesModelParamInit &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @override
  $UseCaseAllUserBarterMessagesModelParamInitCopyWith<
          UseCaseAllUserBarterMessagesModelParamInit>
      get copyWith => _$UseCaseAllUserBarterMessagesModelParamInitCopyWithImpl<
          UseCaseAllUserBarterMessagesModelParamInit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String userId),
  }) {
    assert(init != null);
    return init(userId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String userId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseAllUserBarterMessagesModelParamInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseAllUserBarterMessagesModelParamInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UseCaseAllUserBarterMessagesModelParamInit
    implements UseCaseAllUserMessagesWithUserIdParam {
  const factory UseCaseAllUserBarterMessagesModelParamInit(
      {@required String userId}) = _$UseCaseAllUserBarterMessagesModelParamInit;

  @override
  String get userId;
  @override
  $UseCaseAllUserBarterMessagesModelParamInitCopyWith<
      UseCaseAllUserBarterMessagesModelParamInit> get copyWith;
}

class _$UseCaseAllConversationFromMessagesWithMessageIdParamTearOff {
  const _$UseCaseAllConversationFromMessagesWithMessageIdParamTearOff();

// ignore: unused_element
  UseCaseAllConversationFromMessagesWithMessageIdParamInit init(
      {@required String messageId}) {
    return UseCaseAllConversationFromMessagesWithMessageIdParamInit(
      messageId: messageId,
    );
  }
}

// ignore: unused_element
const $UseCaseAllConversationFromMessagesWithMessageIdParam =
    _$UseCaseAllConversationFromMessagesWithMessageIdParamTearOff();

mixin _$UseCaseAllConversationFromMessagesWithMessageIdParam {
  String get messageId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String messageId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String messageId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result init(
            UseCaseAllConversationFromMessagesWithMessageIdParamInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseAllConversationFromMessagesWithMessageIdParamInit value),
    @required Result orElse(),
  });

  $UseCaseAllConversationFromMessagesWithMessageIdParamCopyWith<
      UseCaseAllConversationFromMessagesWithMessageIdParam> get copyWith;
}

abstract class $UseCaseAllConversationFromMessagesWithMessageIdParamCopyWith<
    $Res> {
  factory $UseCaseAllConversationFromMessagesWithMessageIdParamCopyWith(
          UseCaseAllConversationFromMessagesWithMessageIdParam value,
          $Res Function(UseCaseAllConversationFromMessagesWithMessageIdParam)
              then) =
      _$UseCaseAllConversationFromMessagesWithMessageIdParamCopyWithImpl<$Res>;
  $Res call({String messageId});
}

class _$UseCaseAllConversationFromMessagesWithMessageIdParamCopyWithImpl<$Res>
    implements
        $UseCaseAllConversationFromMessagesWithMessageIdParamCopyWith<$Res> {
  _$UseCaseAllConversationFromMessagesWithMessageIdParamCopyWithImpl(
      this._value, this._then);

  final UseCaseAllConversationFromMessagesWithMessageIdParam _value;
  // ignore: unused_field
  final $Res Function(UseCaseAllConversationFromMessagesWithMessageIdParam)
      _then;

  @override
  $Res call({
    Object messageId = freezed,
  }) {
    return _then(_value.copyWith(
      messageId: messageId == freezed ? _value.messageId : messageId as String,
    ));
  }
}

abstract class $UseCaseAllConversationFromMessagesWithMessageIdParamInitCopyWith<
        $Res>
    implements
        $UseCaseAllConversationFromMessagesWithMessageIdParamCopyWith<$Res> {
  factory $UseCaseAllConversationFromMessagesWithMessageIdParamInitCopyWith(
          UseCaseAllConversationFromMessagesWithMessageIdParamInit value,
          $Res Function(
                  UseCaseAllConversationFromMessagesWithMessageIdParamInit)
              then) =
      _$UseCaseAllConversationFromMessagesWithMessageIdParamInitCopyWithImpl<
          $Res>;
  @override
  $Res call({String messageId});
}

class _$UseCaseAllConversationFromMessagesWithMessageIdParamInitCopyWithImpl<
        $Res>
    extends _$UseCaseAllConversationFromMessagesWithMessageIdParamCopyWithImpl<
        $Res>
    implements
        $UseCaseAllConversationFromMessagesWithMessageIdParamInitCopyWith<
            $Res> {
  _$UseCaseAllConversationFromMessagesWithMessageIdParamInitCopyWithImpl(
      UseCaseAllConversationFromMessagesWithMessageIdParamInit _value,
      $Res Function(UseCaseAllConversationFromMessagesWithMessageIdParamInit)
          _then)
      : super(
            _value,
            (v) => _then(
                v as UseCaseAllConversationFromMessagesWithMessageIdParamInit));

  @override
  UseCaseAllConversationFromMessagesWithMessageIdParamInit get _value =>
      super._value as UseCaseAllConversationFromMessagesWithMessageIdParamInit;

  @override
  $Res call({
    Object messageId = freezed,
  }) {
    return _then(UseCaseAllConversationFromMessagesWithMessageIdParamInit(
      messageId: messageId == freezed ? _value.messageId : messageId as String,
    ));
  }
}

class _$UseCaseAllConversationFromMessagesWithMessageIdParamInit
    implements UseCaseAllConversationFromMessagesWithMessageIdParamInit {
  const _$UseCaseAllConversationFromMessagesWithMessageIdParamInit(
      {@required this.messageId})
      : assert(messageId != null);

  @override
  final String messageId;

  @override
  String toString() {
    return 'UseCaseAllConversationFromMessagesWithMessageIdParam.init(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseAllConversationFromMessagesWithMessageIdParamInit &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messageId);

  @override
  $UseCaseAllConversationFromMessagesWithMessageIdParamInitCopyWith<
          UseCaseAllConversationFromMessagesWithMessageIdParamInit>
      get copyWith =>
          _$UseCaseAllConversationFromMessagesWithMessageIdParamInitCopyWithImpl<
                  UseCaseAllConversationFromMessagesWithMessageIdParamInit>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String messageId),
  }) {
    assert(init != null);
    return init(messageId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String messageId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result init(
            UseCaseAllConversationFromMessagesWithMessageIdParamInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseAllConversationFromMessagesWithMessageIdParamInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UseCaseAllConversationFromMessagesWithMessageIdParamInit
    implements UseCaseAllConversationFromMessagesWithMessageIdParam {
  const factory UseCaseAllConversationFromMessagesWithMessageIdParamInit(
          {@required String messageId}) =
      _$UseCaseAllConversationFromMessagesWithMessageIdParamInit;

  @override
  String get messageId;
  @override
  $UseCaseAllConversationFromMessagesWithMessageIdParamInitCopyWith<
      UseCaseAllConversationFromMessagesWithMessageIdParamInit> get copyWith;
}
