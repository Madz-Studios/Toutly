// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'use_case_barter_conversation_text_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UseCaseBarterConversationTextModelParamTearOff {
  const _$UseCaseBarterConversationTextModelParamTearOff();

// ignore: unused_element
  UseCaseBarterTransactionModelParamInit init(
      {@required String barterMessageId,
      @required BarterConversationTextModel barterConversationTextModel}) {
    return UseCaseBarterTransactionModelParamInit(
      barterMessageId: barterMessageId,
      barterConversationTextModel: barterConversationTextModel,
    );
  }
}

// ignore: unused_element
const $UseCaseBarterConversationTextModelParam =
    _$UseCaseBarterConversationTextModelParamTearOff();

mixin _$UseCaseBarterConversationTextModelParam {
  String get barterMessageId;
  BarterConversationTextModel get barterConversationTextModel;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result init(String barterMessageId,
            BarterConversationTextModel barterConversationTextModel),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String barterMessageId,
        BarterConversationTextModel barterConversationTextModel),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseBarterTransactionModelParamInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseBarterTransactionModelParamInit value),
    @required Result orElse(),
  });

  $UseCaseBarterConversationTextModelParamCopyWith<
      UseCaseBarterConversationTextModelParam> get copyWith;
}

abstract class $UseCaseBarterConversationTextModelParamCopyWith<$Res> {
  factory $UseCaseBarterConversationTextModelParamCopyWith(
          UseCaseBarterConversationTextModelParam value,
          $Res Function(UseCaseBarterConversationTextModelParam) then) =
      _$UseCaseBarterConversationTextModelParamCopyWithImpl<$Res>;
  $Res call(
      {String barterMessageId,
      BarterConversationTextModel barterConversationTextModel});
}

class _$UseCaseBarterConversationTextModelParamCopyWithImpl<$Res>
    implements $UseCaseBarterConversationTextModelParamCopyWith<$Res> {
  _$UseCaseBarterConversationTextModelParamCopyWithImpl(
      this._value, this._then);

  final UseCaseBarterConversationTextModelParam _value;
  // ignore: unused_field
  final $Res Function(UseCaseBarterConversationTextModelParam) _then;

  @override
  $Res call({
    Object barterMessageId = freezed,
    Object barterConversationTextModel = freezed,
  }) {
    return _then(_value.copyWith(
      barterMessageId: barterMessageId == freezed
          ? _value.barterMessageId
          : barterMessageId as String,
      barterConversationTextModel: barterConversationTextModel == freezed
          ? _value.barterConversationTextModel
          : barterConversationTextModel as BarterConversationTextModel,
    ));
  }
}

abstract class $UseCaseBarterTransactionModelParamInitCopyWith<$Res>
    implements $UseCaseBarterConversationTextModelParamCopyWith<$Res> {
  factory $UseCaseBarterTransactionModelParamInitCopyWith(
          UseCaseBarterTransactionModelParamInit value,
          $Res Function(UseCaseBarterTransactionModelParamInit) then) =
      _$UseCaseBarterTransactionModelParamInitCopyWithImpl<$Res>;
  @override
  $Res call(
      {String barterMessageId,
      BarterConversationTextModel barterConversationTextModel});
}

class _$UseCaseBarterTransactionModelParamInitCopyWithImpl<$Res>
    extends _$UseCaseBarterConversationTextModelParamCopyWithImpl<$Res>
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
    Object barterMessageId = freezed,
    Object barterConversationTextModel = freezed,
  }) {
    return _then(UseCaseBarterTransactionModelParamInit(
      barterMessageId: barterMessageId == freezed
          ? _value.barterMessageId
          : barterMessageId as String,
      barterConversationTextModel: barterConversationTextModel == freezed
          ? _value.barterConversationTextModel
          : barterConversationTextModel as BarterConversationTextModel,
    ));
  }
}

class _$UseCaseBarterTransactionModelParamInit
    implements UseCaseBarterTransactionModelParamInit {
  const _$UseCaseBarterTransactionModelParamInit(
      {@required this.barterMessageId,
      @required this.barterConversationTextModel})
      : assert(barterMessageId != null),
        assert(barterConversationTextModel != null);

  @override
  final String barterMessageId;
  @override
  final BarterConversationTextModel barterConversationTextModel;

  @override
  String toString() {
    return 'UseCaseBarterConversationTextModelParam.init(barterMessageId: $barterMessageId, barterConversationTextModel: $barterConversationTextModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseBarterTransactionModelParamInit &&
            (identical(other.barterMessageId, barterMessageId) ||
                const DeepCollectionEquality()
                    .equals(other.barterMessageId, barterMessageId)) &&
            (identical(other.barterConversationTextModel,
                    barterConversationTextModel) ||
                const DeepCollectionEquality().equals(
                    other.barterConversationTextModel,
                    barterConversationTextModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(barterMessageId) ^
      const DeepCollectionEquality().hash(barterConversationTextModel);

  @override
  $UseCaseBarterTransactionModelParamInitCopyWith<
          UseCaseBarterTransactionModelParamInit>
      get copyWith => _$UseCaseBarterTransactionModelParamInitCopyWithImpl<
          UseCaseBarterTransactionModelParamInit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result init(String barterMessageId,
            BarterConversationTextModel barterConversationTextModel),
  }) {
    assert(init != null);
    return init(barterMessageId, barterConversationTextModel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String barterMessageId,
        BarterConversationTextModel barterConversationTextModel),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(barterMessageId, barterConversationTextModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(UseCaseBarterTransactionModelParamInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(UseCaseBarterTransactionModelParamInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UseCaseBarterTransactionModelParamInit
    implements UseCaseBarterConversationTextModelParam {
  const factory UseCaseBarterTransactionModelParamInit(
          {@required String barterMessageId,
          @required BarterConversationTextModel barterConversationTextModel}) =
      _$UseCaseBarterTransactionModelParamInit;

  @override
  String get barterMessageId;
  @override
  BarterConversationTextModel get barterConversationTextModel;
  @override
  $UseCaseBarterTransactionModelParamInitCopyWith<
      UseCaseBarterTransactionModelParamInit> get copyWith;
}
