part of 'conversation_cubit.dart';

@freezed
abstract class ConversationState with _$ConversationState {
  const factory ConversationState({
    @required Stream<QuerySnapshot> barterMessages,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _BarterMessageState;

  factory ConversationState.empty() => ConversationState(
        barterMessages: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory ConversationState.loading() => ConversationState(
        barterMessages: Stream.empty(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory ConversationState.failure({String info}) => ConversationState(
        barterMessages: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory ConversationState.success(
          {Stream<QuerySnapshot> barterMessages, String info}) =>
      ConversationState(
        barterMessages: barterMessages,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
