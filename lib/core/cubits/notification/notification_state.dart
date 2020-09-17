part of 'notification_cubit.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState({
    @required bool hasUnreadMessage,
    // @required bool hasOfferMessageUnread,
    // @required bool hasBarterMessageUnread,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _NotificationState;

  factory NotificationState.empty() => NotificationState(
        hasUnreadMessage: false,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory NotificationState.loading() => NotificationState(
        hasUnreadMessage: false,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory NotificationState.failure({String info}) => NotificationState(
        hasUnreadMessage: false,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory NotificationState.success({hasUnreadMessage, String info}) =>
      NotificationState(
        hasUnreadMessage: hasUnreadMessage,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
