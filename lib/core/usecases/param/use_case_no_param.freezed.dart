// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'use_case_no_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UseCaseNoParamTearOff {
  const _$UseCaseNoParamTearOff();

// ignore: unused_element
  UseCaseNoParamInit init() {
    return const UseCaseNoParamInit();
  }
}

// ignore: unused_element
const $UseCaseNoParam = _$UseCaseNoParamTearOff();

mixin _$UseCaseNoParam {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseNoParamInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseNoParamInit value),
    @required Result orElse(),
  });
}

abstract class $UseCaseNoParamCopyWith<$Res> {
  factory $UseCaseNoParamCopyWith(
          UseCaseNoParam value, $Res Function(UseCaseNoParam) then) =
      _$UseCaseNoParamCopyWithImpl<$Res>;
}

class _$UseCaseNoParamCopyWithImpl<$Res>
    implements $UseCaseNoParamCopyWith<$Res> {
  _$UseCaseNoParamCopyWithImpl(this._value, this._then);

  final UseCaseNoParam _value;
  // ignore: unused_field
  final $Res Function(UseCaseNoParam) _then;
}

abstract class $UseCaseNoParamInitCopyWith<$Res> {
  factory $UseCaseNoParamInitCopyWith(
          UseCaseNoParamInit value, $Res Function(UseCaseNoParamInit) then) =
      _$UseCaseNoParamInitCopyWithImpl<$Res>;
}

class _$UseCaseNoParamInitCopyWithImpl<$Res>
    extends _$UseCaseNoParamCopyWithImpl<$Res>
    implements $UseCaseNoParamInitCopyWith<$Res> {
  _$UseCaseNoParamInitCopyWithImpl(
      UseCaseNoParamInit _value, $Res Function(UseCaseNoParamInit) _then)
      : super(_value, (v) => _then(v as UseCaseNoParamInit));

  @override
  UseCaseNoParamInit get _value => super._value as UseCaseNoParamInit;
}

class _$UseCaseNoParamInit implements UseCaseNoParamInit {
  const _$UseCaseNoParamInit();

  @override
  String toString() {
    return 'UseCaseNoParam.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UseCaseNoParamInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
  }) {
    assert(init != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
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
    @required Result init(UseCaseNoParamInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseNoParamInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UseCaseNoParamInit implements UseCaseNoParam {
  const factory UseCaseNoParamInit() = _$UseCaseNoParamInit;
}
