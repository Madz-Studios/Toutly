import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_case_barter_param.freezed.dart';

@freezed
abstract class UseCaseBarterModelParam with _$UseCaseBarterModelParam {
  const factory UseCaseBarterModelParam.init({
    BarterModel barterModel,
  }) = UseCaseBarterModelParamInit;
}
