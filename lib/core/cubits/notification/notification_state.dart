part of 'notification_cubit.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState({
    @required Stream<QuerySnapshot> barterMessages,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _NotificationState;

  factory NotificationState.empty() => NotificationState(
        barterMessages: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory NotificationState.loading() => NotificationState(
        barterMessages: Stream.empty(),
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory NotificationState.failure({String info}) => NotificationState(
        barterMessages: Stream.empty(),
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory NotificationState.success(
          {@required Stream<QuerySnapshot> barterMessages, String info}) =>
      NotificationState(
        barterMessages: barterMessages,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
