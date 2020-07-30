// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'use_case_barter_messages_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UseCaseBarterMessagesModelParamTearOff {
  const _$UseCaseBarterMessagesModelParamTearOff();

  UseCaseBarterMessagesModelParamInit init(
      {@required String transactionId,
      @required BarterMessageModel barterMessageModel}) {
    return UseCaseBarterMessagesModelParamInit(
      transactionId: transactionId,
      barterMessageModel: barterMessageModel,
    );
  }
}

// ignore: unused_element
const $UseCaseBarterMessagesModelParam =
    _$UseCaseBarterMessagesModelParamTearOff();

mixin _$UseCaseBarterMessagesModelParam {
  String get transactionId;
  BarterMessageModel get barterMessageModel;

  $UseCaseBarterMessagesModelParamCopyWith<UseCaseBarterMessagesModelParam>
      get copyWith;
}

abstract class $UseCaseBarterMessagesModelParamCopyWith<$Res> {
  factory $UseCaseBarterMessagesModelParamCopyWith(
          UseCaseBarterMessagesModelParam value,
          $Res Function(UseCaseBarterMessagesModelParam) then) =
      _$UseCaseBarterMessagesModelParamCopyWithImpl<$Res>;
  $Res call({String transactionId, BarterMessageModel barterMessageModel});
}

class _$UseCaseBarterMessagesModelParamCopyWithImpl<$Res>
    implements $UseCaseBarterMessagesModelParamCopyWith<$Res> {
  _$UseCaseBarterMessagesModelParamCopyWithImpl(this._value, this._then);

  final UseCaseBarterMessagesModelParam _value;
  // ignore: unused_field
  final $Res Function(UseCaseBarterMessagesModelParam) _then;

  @override
  $Res call({
    Object transactionId = freezed,
    Object barterMessageModel = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId as String,
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
  $Res call({String transactionId, BarterMessageModel barterMessageModel});
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
    Object transactionId = freezed,
    Object barterMessageModel = freezed,
  }) {
    return _then(UseCaseBarterMessagesModelParamInit(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId as String,
      barterMessageModel: barterMessageModel == freezed
          ? _value.barterMessageModel
          : barterMessageModel as BarterMessageModel,
    ));
  }
}

class _$UseCaseBarterMessagesModelParamInit
    implements UseCaseBarterMessagesModelParamInit {
  const _$UseCaseBarterMessagesModelParamInit(
      {@required this.transactionId, @required this.barterMessageModel})
      : assert(transactionId != null),
        assert(barterMessageModel != null);

  @override
  final String transactionId;
  @override
  final BarterMessageModel barterMessageModel;

  @override
  String toString() {
    return 'UseCaseBarterMessagesModelParam.init(transactionId: $transactionId, barterMessageModel: $barterMessageModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseBarterMessagesModelParamInit &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.barterMessageModel, barterMessageModel) ||
                const DeepCollectionEquality()
                    .equals(other.barterMessageModel, barterMessageModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(barterMessageModel);

  @override
  $UseCaseBarterMessagesModelParamInitCopyWith<
          UseCaseBarterMessagesModelParamInit>
      get copyWith => _$UseCaseBarterMessagesModelParamInitCopyWithImpl<
          UseCaseBarterMessagesModelParamInit>(this, _$identity);
}

abstract class UseCaseBarterMessagesModelParamInit
    implements UseCaseBarterMessagesModelParam {
  const factory UseCaseBarterMessagesModelParamInit(
          {@required String transactionId,
          @required BarterMessageModel barterMessageModel}) =
      _$UseCaseBarterMessagesModelParamInit;

  @override
  String get transactionId;
  @override
  BarterMessageModel get barterMessageModel;
  @override
  $UseCaseBarterMessagesModelParamInitCopyWith<
      UseCaseBarterMessagesModelParamInit> get copyWith;
}
