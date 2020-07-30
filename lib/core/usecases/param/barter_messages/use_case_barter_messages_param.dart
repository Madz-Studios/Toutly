import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_case_barter_messages_param.freezed.dart';

@freezed
abstract class UseCaseBarterMessagesModelParam
    with _$UseCaseBarterMessagesModelParam {
  const factory UseCaseBarterMessagesModelParam.init({
    @required String transactionId,
    @required BarterMessageModel barterMessageModel,
  }) = UseCaseBarterMessagesModelParamInit;
}
