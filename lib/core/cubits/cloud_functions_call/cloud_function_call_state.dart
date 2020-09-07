part of 'cloud_function_call_cubit.dart';

@freezed
abstract class CloudFunctionCallState with _$CloudFunctionCallState {
  const factory CloudFunctionCallState({
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _CloudFunctionCallState;

  factory CloudFunctionCallState.empty() => CloudFunctionCallState(
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory CloudFunctionCallState.loading() => CloudFunctionCallState(
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory CloudFunctionCallState.failure({String info}) =>
      CloudFunctionCallState(
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory CloudFunctionCallState.success({String info}) =>
      CloudFunctionCallState(
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
