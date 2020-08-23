import 'package:Toutly/core/cubits/barter_messages/conversation/conversation_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter_conversation_text/barter_conversation_text_model.dart';
import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dash_chat/dash_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatStream extends StatefulWidget {
  final BarterMessageModel barterMessageModel;
  final UserModel otherUser;
  ChatStream({
    @required this.barterMessageModel,
    @required this.otherUser,
  });
  @override
  _ChatStreamState createState() => _ChatStreamState();
}

class _ChatStreamState extends State<ChatStream> {
  final _conversationCubit = getIt<ConversationCubit>();
  final GlobalKey<_ChatStreamState> _chatViewKey =
      GlobalKey<_ChatStreamState>();

  @override
  void initState() {
    super.initState();
    _conversationCubit.getAllTextConversation(
      widget.barterMessageModel.barterMessageId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (_, currentUserState) {
        final currentUser = currentUserState.currentUserModel;

        return BlocBuilder<ConversationCubit, ConversationState>(
          builder: (_, conversationState) {
            if (conversationState.isSuccess) {
              return StreamBuilder(
                stream: conversationState.barterMessages,
                builder: (_, streamConversationSnapshot) {
                  debugPrint("ChatStream Snapshot " +
                      streamConversationSnapshot.toString());
                  switch (streamConversationSnapshot.connectionState) {
                    case ConnectionState.active:
                      if (streamConversationSnapshot.hasError) {
                        debugPrint(
                            'Error: ${streamConversationSnapshot.error}');
                        return LoadingOrErrorWidgetUtil(
                            'Error: ${streamConversationSnapshot.error}');
                      } else {
                        return SafeArea(
                          child: _Conversation(
                            snapshot: streamConversationSnapshot,
                            barterMessageModel: widget.barterMessageModel,
                            chatViewKey: _chatViewKey,
                            currentUserModel: currentUser,
                            otherUserModel: widget.otherUser,
                          ),
                        );
                      }
                      break;
                    default:
                      if (streamConversationSnapshot.hasError) {
                        debugPrint(
                            'Error: ${streamConversationSnapshot.error}');
                        return LoadingOrErrorWidgetUtil(
                            'Error: ${streamConversationSnapshot.error}');
                      } else {
                        return SafeArea(
                          child: _Conversation(
                            snapshot: streamConversationSnapshot,
                            barterMessageModel: widget.barterMessageModel,
                            chatViewKey: _chatViewKey,
                            currentUserModel: currentUser,
                            otherUserModel: widget.otherUser,
                          ),
                        );
                      }
                  }
                },
              );
            }

            return LoadingOrErrorWidgetUtil(conversationState.info);
          },
        );
      },
    );
  }
}

class _Conversation extends StatelessWidget {
  final AsyncSnapshot<QuerySnapshot> snapshot;
  final BarterMessageModel barterMessageModel;
  final GlobalKey<_ChatStreamState> chatViewKey;
  final UserModel currentUserModel;
  final UserModel otherUserModel;
  _Conversation({
    @required this.snapshot,
    @required this.barterMessageModel,
    @required this.chatViewKey,
    @required this.currentUserModel,
    @required this.otherUserModel,
  });

  @override
  Widget build(BuildContext context) {
    ChatUser currentChatUser = ChatUser(
      uid: currentUserModel.userId,
      name: currentUserModel.name,
      avatar: currentUserModel.photoUrl,
    );
    ChatUser otherChatUser;
    if (snapshot.data != null) {
      final conversationDocs = snapshot.data.docs;

      List<ChatMessage> messages = [];
      for (final conversation in conversationDocs) {
        final conversationModel =
            BarterConversationTextModel.fromJson(conversation.data());

        if (conversationModel.userId != currentUserModel.userId) {
          otherChatUser = ChatUser(
            uid: conversationModel.userId,
            name: otherUserModel.name ?? '',
            avatar: otherUserModel.photoUrl ?? '',
          );
        }

        final message = ChatMessage(
          text: conversationModel.text,
          createdAt: conversationModel.dateCreated,
          user: conversationModel.userId == currentUserModel.userId
              ? currentChatUser
              : otherChatUser,
        );
        messages.add(
          message,
        );
      }

      return _Chat(
        messages: messages,
        barterMessageModel: barterMessageModel,
        chatViewKey: chatViewKey,
        currentChatUser: currentChatUser,
        currentUserModel: currentUserModel,
      );
    } else {
      return LoadingOrErrorWidgetUtil('');
    }
  }
}

class _Chat extends StatelessWidget {
  final _conversationCubit = getIt<ConversationCubit>();

  final BarterMessageModel barterMessageModel;
  final GlobalKey<_ChatStreamState> chatViewKey;
  final UserModel currentUserModel;
  final List<ChatMessage> messages;
  final ChatUser currentChatUser;
  _Chat({
    @required this.barterMessageModel,
    @required this.currentUserModel,
    @required this.chatViewKey,
    @required this.messages,
    @required this.currentChatUser,
  });

  @override
  Widget build(BuildContext context) {
    return DashChat(
      key: chatViewKey,
      inverted: true,
      onSend: onSend,
      sendOnEnter: true,
      textInputAction: TextInputAction.send,
      user: currentChatUser,
      inputDecoration: InputDecoration.collapsed(hintText: "Type a message"),
      dateFormat: DateFormat('yyyy-MMM-dd'),
      timeFormat: DateFormat('HH:mm'),
      messages: messages,
      showUserAvatar: true,
      showAvatarForEveryMessage: false,
      scrollToBottom: true,
      alwaysShowSend: false,
      onPressAvatar: (ChatUser user) {
        print("OnPressAvatar: ${user.name}");
      },
      onLongPressAvatar: (ChatUser user) {
        print("OnLongPressAvatar: ${user.name}");
      },
      inputMaxLines: 5,
      messageContainerPadding: EdgeInsets.only(left: 5.0, right: 5.0),
      inputTextStyle: TextStyle(fontSize: 14.0),
      inputContainerStyle: BoxDecoration(
        border: Border.all(
          color: kPrimaryColor,
          width: 0.0,
        ),
        color: Color(0XFFF8F8F8),
        borderRadius: BorderRadius.circular(50.0),
      ),
      inputCursorColor: kPrimaryColor,
      sendButtonBuilder: (onPressed) {
        return IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.send,
            color: kPrimaryColor,
          ),
        );
      },
      messageDecorationBuilder: (message, isUser) {
        return BoxDecoration(
          color: isUser ? kPrimaryColor : Color.fromRGBO(225, 225, 225, 1),
          borderRadius: BorderRadius.circular(10.0),
        );
      },
    );
  }

  void onSend(ChatMessage message) async {
    debugPrint('${message.toJson()}');

    _conversationCubit.sendConversationText(
      barterMessageId: barterMessageModel.barterMessageId,
      userId: message.user.uid,
      message: message.text,
    );
  }
}
