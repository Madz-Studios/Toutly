import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_case_barter_param.freezed.dart';

@freezed
abstract class UseCaseBarterModelParam with _$UseCaseBarterModelParam {
  const factory UseCaseBarterModelParam.init({
    BarterModel barterModel,
  }) = UseCaseBarterModelParamInit;
}

@freezed
abstract class UseCaseUserIdParam with _$UseCaseUserIdParam {
  const factory UseCaseUserIdParam.init({
    String userId,
  }) = UseCaseUserIdParamInit;
}

@freezed
abstract class UseCaseItemIdParam with _$UseCaseItemIdParam {
  const factory UseCaseItemIdParam.init(String itemId) = UseCaseItemIdParamInit;
}

@freezed
abstract class UseCaseItemIdListParam with _$UseCaseItemIdListParam {
  const factory UseCaseItemIdListParam.init(List<String> itemIds) =
      UseCaseItemIdListParamInit;
}
