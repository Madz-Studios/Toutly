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
