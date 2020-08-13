import 'package:Toutly/core/models/barter_conversation_text/barter_conversation_text_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_case_barter_conversation_text_param.freezed.dart';

@freezed
abstract class UseCaseBarterConversationTextModelParam
    with _$UseCaseBarterConversationTextModelParam {
  const factory UseCaseBarterConversationTextModelParam.init({
    @required String messageId,
    @required BarterConversationTextModel barterConversationTextModel,
  }) = UseCaseBarterTransactionModelParamInit;
}
