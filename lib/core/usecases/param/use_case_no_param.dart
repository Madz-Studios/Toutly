import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_case_no_param.freezed.dart';

@freezed
abstract class UseCaseNoParam with _$UseCaseNoParam {
  const factory UseCaseNoParam.init() = UseCaseNoParamInit;
}
