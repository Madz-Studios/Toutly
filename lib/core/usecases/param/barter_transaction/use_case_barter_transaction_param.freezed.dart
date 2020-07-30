// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'use_case_barter_transaction_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UseCaseBarterTransactionModelParamTearOff {
  const _$UseCaseBarterTransactionModelParamTearOff();

  UseCaseBarterTransactionModelParamInit init(
      {@required BarterTransactionModel barterTransactionModel}) {
    return UseCaseBarterTransactionModelParamInit(
      barterTransactionModel: barterTransactionModel,
    );
  }
}

// ignore: unused_element
const $UseCaseBarterTransactionModelParam =
    _$UseCaseBarterTransactionModelParamTearOff();

mixin _$UseCaseBarterTransactionModelParam {
  BarterTransactionModel get barterTransactionModel;

  $UseCaseBarterTransactionModelParamCopyWith<
      UseCaseBarterTransactionModelParam> get copyWith;
}

abstract class $UseCaseBarterTransactionModelParamCopyWith<$Res> {
  factory $UseCaseBarterTransactionModelParamCopyWith(
          UseCaseBarterTransactionModelParam value,
          $Res Function(UseCaseBarterTransactionModelParam) then) =
      _$UseCaseBarterTransactionModelParamCopyWithImpl<$Res>;
  $Res call({BarterTransactionModel barterTransactionModel});
}

class _$UseCaseBarterTransactionModelParamCopyWithImpl<$Res>
    implements $UseCaseBarterTransactionModelParamCopyWith<$Res> {
  _$UseCaseBarterTransactionModelParamCopyWithImpl(this._value, this._then);

  final UseCaseBarterTransactionModelParam _value;
  // ignore: unused_field
  final $Res Function(UseCaseBarterTransactionModelParam) _then;

  @override
  $Res call({
    Object barterTransactionModel = freezed,
  }) {
    return _then(_value.copyWith(
      barterTransactionModel: barterTransactionModel == freezed
          ? _value.barterTransactionModel
          : barterTransactionModel as BarterTransactionModel,
    ));
  }
}

abstract class $UseCaseBarterTransactionModelParamInitCopyWith<$Res>
    implements $UseCaseBarterTransactionModelParamCopyWith<$Res> {
  factory $UseCaseBarterTransactionModelParamInitCopyWith(
          UseCaseBarterTransactionModelParamInit value,
          $Res Function(UseCaseBarterTransactionModelParamInit) then) =
      _$UseCaseBarterTransactionModelParamInitCopyWithImpl<$Res>;
  @override
  $Res call({BarterTransactionModel barterTransactionModel});
}

class _$UseCaseBarterTransactionModelParamInitCopyWithImpl<$Res>
    extends _$UseCaseBarterTransactionModelParamCopyWithImpl<$Res>
    implements $UseCaseBarterTransactionModelParamInitCopyWith<$Res> {
  _$UseCaseBarterTransactionModelParamInitCopyWithImpl(
      UseCaseBarterTransactionModelParamInit _value,
      $Res Function(UseCaseBarterTransactionModelParamInit) _then)
      : super(
            _value, (v) => _then(v as UseCaseBarterTransactionModelParamInit));

  @override
  UseCaseBarterTransactionModelParamInit get _value =>
      super._value as UseCaseBarterTransactionModelParamInit;

  @override
  $Res call({
    Object barterTransactionModel = freezed,
  }) {
    return _then(UseCaseBarterTransactionModelParamInit(
      barterTransactionModel: barterTransactionModel == freezed
          ? _value.barterTransactionModel
          : barterTransactionModel as BarterTransactionModel,
    ));
  }
}

class _$UseCaseBarterTransactionModelParamInit
    implements UseCaseBarterTransactionModelParamInit {
  const _$UseCaseBarterTransactionModelParamInit(
      {@required this.barterTransactionModel})
      : assert(barterTransactionModel != null);

  @override
  final BarterTransactionModel barterTransactionModel;

  @override
  String toString() {
    return 'UseCaseBarterTransactionModelParam.init(barterTransactionModel: $barterTransactionModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseBarterTransactionModelParamInit &&
            (identical(other.barterTransactionModel, barterTransactionModel) ||
                const DeepCollectionEquality().equals(
                    other.barterTransactionModel, barterTransactionModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(barterTransactionModel);

  @override
  $UseCaseBarterTransactionModelParamInitCopyWith<
          UseCaseBarterTransactionModelParamInit>
      get copyWith => _$UseCaseBarterTransactionModelParamInitCopyWithImpl<
          UseCaseBarterTransactionModelParamInit>(this, _$identity);
}

abstract class UseCaseBarterTransactionModelParamInit
    implements UseCaseBarterTransactionModelParam {
  const factory UseCaseBarterTransactionModelParamInit(
          {@required BarterTransactionModel barterTransactionModel}) =
      _$UseCaseBarterTransactionModelParamInit;

  @override
  BarterTransactionModel get barterTransactionModel;
  @override
  $UseCaseBarterTransactionModelParamInitCopyWith<
      UseCaseBarterTransactionModelParamInit> get copyWith;
}
