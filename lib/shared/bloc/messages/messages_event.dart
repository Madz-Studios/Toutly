part of 'messages_bloc.dart';

@freezed
abstract class MessagesEvent with _$MessagesEvent {
  const factory MessagesEvent.init() = MessagesEventInit;

  const factory MessagesEvent.getAllUserMessages(String userId) =
      MessagesEventGetAllUserMessages;
}
