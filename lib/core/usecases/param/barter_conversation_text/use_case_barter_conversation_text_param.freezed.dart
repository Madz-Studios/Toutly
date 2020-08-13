// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'use_case_barter_conversation_text_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UseCaseBarterConversationTextModelParamTearOff {
  const _$UseCaseBarterConversationTextModelParamTearOff();

  UseCaseBarterTransactionModelParamInit init(
      {@required String messageId,
      @required BarterConversationTextModel barterConversationTextModel}) {
    return UseCaseBarterTransactionModelParamInit(
      messageId: messageId,
      barterConversationTextModel: barterConversationTextModel,
    );
  }
}

// ignore: unused_element
const $UseCaseBarterConversationTextModelParam =
    _$UseCaseBarterConversationTextModelParamTearOff();

mixin _$UseCaseBarterConversationTextModelParam {
  String get messageId;
  BarterConversationTextModel get barterConversationTextModel;

  $UseCaseBarterConversationTextModelParamCopyWith<
      UseCaseBarterConversationTextModelParam> get copyWith;
}

abstract class $UseCaseBarterConversationTextModelParamCopyWith<$Res> {
  factory $UseCaseBarterConversationTextModelParamCopyWith(
          UseCaseBarterConversationTextModelParam value,
          $Res Function(UseCaseBarterConversationTextModelParam) then) =
      _$UseCaseBarterConversationTextModelParamCopyWithImpl<$Res>;
  $Res call(
      {String messageId,
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
    Object messageId = freezed,
    Object barterConversationTextModel = freezed,
  }) {
    return _then(_value.copyWith(
      messageId: messageId == freezed ? _value.messageId : messageId as String,
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
      {String messageId,
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
    Object messageId = freezed,
    Object barterConversationTextModel = freezed,
  }) {
    return _then(UseCaseBarterTransactionModelParamInit(
      messageId: messageId == freezed ? _value.messageId : messageId as String,
      barterConversationTextModel: barterConversationTextModel == freezed
          ? _value.barterConversationTextModel
          : barterConversationTextModel as BarterConversationTextModel,
    ));
  }
}

class _$UseCaseBarterTransactionModelParamInit
    implements UseCaseBarterTransactionModelParamInit {
  const _$UseCaseBarterTransactionModelParamInit(
      {@required this.messageId, @required this.barterConversationTextModel})
      : assert(messageId != null),
        assert(barterConversationTextModel != null);

  @override
  final String messageId;
  @override
  final BarterConversationTextModel barterConversationTextModel;

  @override
  String toString() {
    return 'UseCaseBarterConversationTextModelParam.init(messageId: $messageId, barterConversationTextModel: $barterConversationTextModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseBarterTransactionModelParamInit &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)) &&
            (identical(other.barterConversationTextModel,
                    barterConversationTextModel) ||
                const DeepCollectionEquality().equals(
                    other.barterConversationTextModel,
                    barterConversationTextModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messageId) ^
      const DeepCollectionEquality().hash(barterConversationTextModel);

  @override
  $UseCaseBarterTransactionModelParamInitCopyWith<
          UseCaseBarterTransactionModelParamInit>
      get copyWith => _$UseCaseBarterTransactionModelParamInitCopyWithImpl<
          UseCaseBarterTransactionModelParamInit>(this, _$identity);
}

abstract class UseCaseBarterTransactionModelParamInit
    implements UseCaseBarterConversationTextModelParam {
  const factory UseCaseBarterTransactionModelParamInit(
          {@required String messageId,
          @required BarterConversationTextModel barterConversationTextModel}) =
      _$UseCaseBarterTransactionModelParamInit;

  @override
  String get messageId;
  @override
  BarterConversationTextModel get barterConversationTextModel;
  @override
  $UseCaseBarterTransactionModelParamInitCopyWith<
      UseCaseBarterTransactionModelParamInit> get copyWith;
}
