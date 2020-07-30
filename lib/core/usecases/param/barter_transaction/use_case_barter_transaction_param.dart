import 'package:Toutly/core/models/barter_transaction/barter_transaction_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_case_barter_transaction_param.freezed.dart';

@freezed
abstract class UseCaseBarterTransactionModelParam
    with _$UseCaseBarterTransactionModelParam {
  const factory UseCaseBarterTransactionModelParam.init({
    @required BarterTransactionModel barterTransactionModel,
  }) = UseCaseBarterTransactionModelParamInit;
}
