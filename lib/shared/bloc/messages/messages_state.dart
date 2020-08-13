part of 'messages_bloc.dart';

@freezed
abstract class MessagesState with _$MessagesState {
  const factory MessagesState({
    @required Future<List<BarterMessageModel>> barterMessages,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _MessagesState;

  factory MessagesState.empty() => MessagesState(
        barterMessages: Future.value([]),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory MessagesState.loading() => MessagesState(
        barterMessages: Future.value([]),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory MessagesState.failure({@required String info}) => MessagesState(
        barterMessages: Future.value([]),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory MessagesState.success(
          {@required Future<List<BarterMessageModel>> barterMessages,
          @required String info}) =>
      MessagesState(
        barterMessages: barterMessages,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
