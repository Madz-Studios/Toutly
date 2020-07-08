// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'use_case_barter_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UseCaseBarterModelParamTearOff {
  const _$UseCaseBarterModelParamTearOff();

  UseCaseBarterModelParamInit init({BarterModel barterModel}) {
    return UseCaseBarterModelParamInit(
      barterModel: barterModel,
    );
  }
}

// ignore: unused_element
const $UseCaseBarterModelParam = _$UseCaseBarterModelParamTearOff();

mixin _$UseCaseBarterModelParam {
  BarterModel get barterModel;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(BarterModel barterModel),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(BarterModel barterModel),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseBarterModelParamInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseBarterModelParamInit value),
    @required Result orElse(),
  });

  $UseCaseBarterModelParamCopyWith<UseCaseBarterModelParam> get copyWith;
}

abstract class $UseCaseBarterModelParamCopyWith<$Res> {
  factory $UseCaseBarterModelParamCopyWith(UseCaseBarterModelParam value,
          $Res Function(UseCaseBarterModelParam) then) =
      _$UseCaseBarterModelParamCopyWithImpl<$Res>;
  $Res call({BarterModel barterModel});
}

class _$UseCaseBarterModelParamCopyWithImpl<$Res>
    implements $UseCaseBarterModelParamCopyWith<$Res> {
  _$UseCaseBarterModelParamCopyWithImpl(this._value, this._then);

  final UseCaseBarterModelParam _value;
  // ignore: unused_field
  final $Res Function(UseCaseBarterModelParam) _then;

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

abstract class $UseCaseBarterModelParamInitCopyWith<$Res>
    implements $UseCaseBarterModelParamCopyWith<$Res> {
  factory $UseCaseBarterModelParamInitCopyWith(
          UseCaseBarterModelParamInit value,
          $Res Function(UseCaseBarterModelParamInit) then) =
      _$UseCaseBarterModelParamInitCopyWithImpl<$Res>;
  @override
  $Res call({BarterModel barterModel});
}

class _$UseCaseBarterModelParamInitCopyWithImpl<$Res>
    extends _$UseCaseBarterModelParamCopyWithImpl<$Res>
    implements $UseCaseBarterModelParamInitCopyWith<$Res> {
  _$UseCaseBarterModelParamInitCopyWithImpl(UseCaseBarterModelParamInit _value,
      $Res Function(UseCaseBarterModelParamInit) _then)
      : super(_value, (v) => _then(v as UseCaseBarterModelParamInit));

  @override
  UseCaseBarterModelParamInit get _value =>
      super._value as UseCaseBarterModelParamInit;

  @override
  $Res call({
    Object barterModel = freezed,
  }) {
    return _then(UseCaseBarterModelParamInit(
      barterModel: barterModel == freezed
          ? _value.barterModel
          : barterModel as BarterModel,
    ));
  }
}

class _$UseCaseBarterModelParamInit implements UseCaseBarterModelParamInit {
  const _$UseCaseBarterModelParamInit({this.barterModel});

  @override
  final BarterModel barterModel;

  @override
  String toString() {
    return 'UseCaseBarterModelParam.init(barterModel: $barterModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseBarterModelParamInit &&
            (identical(other.barterModel, barterModel) ||
                const DeepCollectionEquality()
                    .equals(other.barterModel, barterModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(barterModel);

  @override
  $UseCaseBarterModelParamInitCopyWith<UseCaseBarterModelParamInit>
      get copyWith => _$UseCaseBarterModelParamInitCopyWithImpl<
          UseCaseBarterModelParamInit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(BarterModel barterModel),
  }) {
    assert(init != null);
    return init(barterModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(BarterModel barterModel),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(barterModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseBarterModelParamInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseBarterModelParamInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UseCaseBarterModelParamInit implements UseCaseBarterModelParam {
  const factory UseCaseBarterModelParamInit({BarterModel barterModel}) =
      _$UseCaseBarterModelParamInit;

  @override
  BarterModel get barterModel;
  @override
  $UseCaseBarterModelParamInitCopyWith<UseCaseBarterModelParamInit>
      get copyWith;
}

class _$UseCaseUserIdParamTearOff {
  const _$UseCaseUserIdParamTearOff();

  UseCaseUserIdParamInit init({String userId}) {
    return UseCaseUserIdParamInit(
      userId: userId,
    );
  }
}

// ignore: unused_element
const $UseCaseUserIdParam = _$UseCaseUserIdParamTearOff();

mixin _$UseCaseUserIdParam {
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
    @required Result init(UseCaseUserIdParamInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserIdParamInit value),
    @required Result orElse(),
  });

  $UseCaseUserIdParamCopyWith<UseCaseUserIdParam> get copyWith;
}

abstract class $UseCaseUserIdParamCopyWith<$Res> {
  factory $UseCaseUserIdParamCopyWith(
          UseCaseUserIdParam value, $Res Function(UseCaseUserIdParam) then) =
      _$UseCaseUserIdParamCopyWithImpl<$Res>;
  $Res call({String userId});
}

class _$UseCaseUserIdParamCopyWithImpl<$Res>
    implements $UseCaseUserIdParamCopyWith<$Res> {
  _$UseCaseUserIdParamCopyWithImpl(this._value, this._then);

  final UseCaseUserIdParam _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserIdParam) _then;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

abstract class $UseCaseUserIdParamInitCopyWith<$Res>
    implements $UseCaseUserIdParamCopyWith<$Res> {
  factory $UseCaseUserIdParamInitCopyWith(UseCaseUserIdParamInit value,
          $Res Function(UseCaseUserIdParamInit) then) =
      _$UseCaseUserIdParamInitCopyWithImpl<$Res>;
  @override
  $Res call({String userId});
}

class _$UseCaseUserIdParamInitCopyWithImpl<$Res>
    extends _$UseCaseUserIdParamCopyWithImpl<$Res>
    implements $UseCaseUserIdParamInitCopyWith<$Res> {
  _$UseCaseUserIdParamInitCopyWithImpl(UseCaseUserIdParamInit _value,
      $Res Function(UseCaseUserIdParamInit) _then)
      : super(_value, (v) => _then(v as UseCaseUserIdParamInit));

  @override
  UseCaseUserIdParamInit get _value => super._value as UseCaseUserIdParamInit;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(UseCaseUserIdParamInit(
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

class _$UseCaseUserIdParamInit implements UseCaseUserIdParamInit {
  const _$UseCaseUserIdParamInit({this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'UseCaseUserIdParam.init(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseUserIdParamInit &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @override
  $UseCaseUserIdParamInitCopyWith<UseCaseUserIdParamInit> get copyWith =>
      _$UseCaseUserIdParamInitCopyWithImpl<UseCaseUserIdParamInit>(
          this, _$identity);

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
    @required Result init(UseCaseUserIdParamInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserIdParamInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UseCaseUserIdParamInit implements UseCaseUserIdParam {
  const factory UseCaseUserIdParamInit({String userId}) =
      _$UseCaseUserIdParamInit;

  @override
  String get userId;
  @override
  $UseCaseUserIdParamInitCopyWith<UseCaseUserIdParamInit> get copyWith;
}

class _$UseCaseUserIdWithListBarterParamTearOff {
  const _$UseCaseUserIdWithListBarterParamTearOff();

  UseCaseUserIdWithListBarterParamInit init(String userId) {
    return UseCaseUserIdWithListBarterParamInit(
      userId,
    );
  }
}

// ignore: unused_element
const $UseCaseUserIdWithListBarterParam =
    _$UseCaseUserIdWithListBarterParamTearOff();

mixin _$UseCaseUserIdWithListBarterParam {
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
    @required Result init(UseCaseUserIdWithListBarterParamInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserIdWithListBarterParamInit value),
    @required Result orElse(),
  });

  $UseCaseUserIdWithListBarterParamCopyWith<UseCaseUserIdWithListBarterParam>
      get copyWith;
}

abstract class $UseCaseUserIdWithListBarterParamCopyWith<$Res> {
  factory $UseCaseUserIdWithListBarterParamCopyWith(
          UseCaseUserIdWithListBarterParam value,
          $Res Function(UseCaseUserIdWithListBarterParam) then) =
      _$UseCaseUserIdWithListBarterParamCopyWithImpl<$Res>;
  $Res call({String userId});
}

class _$UseCaseUserIdWithListBarterParamCopyWithImpl<$Res>
    implements $UseCaseUserIdWithListBarterParamCopyWith<$Res> {
  _$UseCaseUserIdWithListBarterParamCopyWithImpl(this._value, this._then);

  final UseCaseUserIdWithListBarterParam _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserIdWithListBarterParam) _then;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

abstract class $UseCaseUserIdWithListBarterParamInitCopyWith<$Res>
    implements $UseCaseUserIdWithListBarterParamCopyWith<$Res> {
  factory $UseCaseUserIdWithListBarterParamInitCopyWith(
          UseCaseUserIdWithListBarterParamInit value,
          $Res Function(UseCaseUserIdWithListBarterParamInit) then) =
      _$UseCaseUserIdWithListBarterParamInitCopyWithImpl<$Res>;
  @override
  $Res call({String userId});
}

class _$UseCaseUserIdWithListBarterParamInitCopyWithImpl<$Res>
    extends _$UseCaseUserIdWithListBarterParamCopyWithImpl<$Res>
    implements $UseCaseUserIdWithListBarterParamInitCopyWith<$Res> {
  _$UseCaseUserIdWithListBarterParamInitCopyWithImpl(
      UseCaseUserIdWithListBarterParamInit _value,
      $Res Function(UseCaseUserIdWithListBarterParamInit) _then)
      : super(_value, (v) => _then(v as UseCaseUserIdWithListBarterParamInit));

  @override
  UseCaseUserIdWithListBarterParamInit get _value =>
      super._value as UseCaseUserIdWithListBarterParamInit;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(UseCaseUserIdWithListBarterParamInit(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

class _$UseCaseUserIdWithListBarterParamInit
    implements UseCaseUserIdWithListBarterParamInit {
  const _$UseCaseUserIdWithListBarterParamInit(this.userId)
      : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'UseCaseUserIdWithListBarterParam.init(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseUserIdWithListBarterParamInit &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @override
  $UseCaseUserIdWithListBarterParamInitCopyWith<
          UseCaseUserIdWithListBarterParamInit>
      get copyWith => _$UseCaseUserIdWithListBarterParamInitCopyWithImpl<
          UseCaseUserIdWithListBarterParamInit>(this, _$identity);

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
    @required Result init(UseCaseUserIdWithListBarterParamInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseUserIdWithListBarterParamInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UseCaseUserIdWithListBarterParamInit
    implements UseCaseUserIdWithListBarterParam {
  const factory UseCaseUserIdWithListBarterParamInit(String userId) =
      _$UseCaseUserIdWithListBarterParamInit;

  @override
  String get userId;
  @override
  $UseCaseUserIdWithListBarterParamInitCopyWith<
      UseCaseUserIdWithListBarterParamInit> get copyWith;
}
