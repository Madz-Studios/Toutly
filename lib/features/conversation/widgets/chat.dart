//import 'package:Toutly/core/cubits/barter_messages/conversation/conversation_cubit.dart';
//import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
//import 'package:Toutly/core/di/injector.dart';
//import 'package:Toutly/core/models/barter_conversation_text/barter_conversation_text_model.dart';
//import 'package:Toutly/shared/constants/app_constants.dart';
//import 'package:Toutly/shared/util/app_size_config.dart';
//import 'package:Toutly/shared/util/error_util.dart';
//import 'package:bubble/bubble.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:google_fonts/google_fonts.dart';
//
//class Chat extends StatefulWidget {
//  final String barterMessageId;
//  Chat({@required this.barterMessageId});
//  @override
//  _ChatState createState() => _ChatState();
//}
//
//class _ChatState extends State<Chat> {
//  final _conversationCubit = getIt<ConversationCubit>();
//
//  @override
//  void initState() {
//    super.initState();
//    _conversationCubit.getAllTextConversation(widget.barterMessageId);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    final appSizeConfig = AppSizeConfig(context);
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//      children: [
//        Expanded(
//          child: _ChatStream(),
//        ),
//        Expanded(
//          child: Container(
//            height: appSizeConfig.blockSizeVertical * 20,
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.end,
//              children: [
//                Divider(
//                  thickness: 1.5,
//                ),
//                Padding(
//                  padding: EdgeInsets.symmetric(
//                    vertical: appSizeConfig.blockSizeVertical * 2,
//                    horizontal: appSizeConfig.blockSizeHorizontal * 2,
//                  ),
//                  child: _SendMessage(widget.barterMessageId),
//                ),
//              ],
//            ),
//          ),
//        ),
//      ],
//    );
//  }
//}
//
//class _ChatStream extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return BlocBuilder<ConversationCubit, ConversationState>(
//      builder: (_, conversationState) {
//        if (conversationState.isSuccess) {
//          return StreamBuilder(
//            stream: conversationState.barterMessages,
//            builder: (_, snapshot) {
//              debugPrint("BarterMessagesTab Snapshot " + snapshot.toString());
//              switch (snapshot.connectionState) {
//                case ConnectionState.done:
//                  if (snapshot.hasError) {
//                    debugPrint('Error: ${snapshot.error}');
//                    return LoadingOrErrorWidgetUtil('Error: ${snapshot.error}');
//                  } else {
//                    return _Conversation(snapshot);
//                  }
//                  break;
//                default:
//                  if (snapshot.hasError) {
//                    debugPrint('Error: ${snapshot.error}');
//                    return LoadingOrErrorWidgetUtil('Error: ${snapshot.error}');
//                  } else {
//                    return _Conversation(snapshot);
//                  }
//              }
//            },
//          );
//        }
//
//        return LoadingOrErrorWidgetUtil(conversationState.info);
//      },
//    );
//  }
//}
//
//class _Conversation extends StatelessWidget {
//  final AsyncSnapshot<QuerySnapshot> snapshot;
//  _Conversation(this.snapshot);
//
//  @override
//  Widget build(BuildContext context) {
//    if (snapshot.data != null) {
//      final conversationDocs = snapshot.data.docs;
//
//      List<_ConversationBubbleItem> messageItems = [];
//      for (final conversation in conversationDocs) {
//        final conversationModel =
//            BarterConversationTextModel.fromJson(conversation.data());
//        messageItems.add(
//          _ConversationBubbleItem(conversationModel),
//        );
//      }
//      return SingleChildScrollView(
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: messageItems,
//        ),
//      );
//    } else {
//      return LoadingOrErrorWidgetUtil('');
//    }
//  }
//}
//
//class _ConversationBubbleItem extends StatelessWidget {
//  final BarterConversationTextModel barterConversationTextModel;
//  _ConversationBubbleItem(this.barterConversationTextModel);
//  @override
//  Widget build(BuildContext context) {
//    final appSizeConfig = AppSizeConfig(context);
//    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
//      builder: (_, currentUserState) {
//        final currentUser = currentUserState.currentUserModel;
//        final bool isMe =
//            currentUser.userId == barterConversationTextModel.userId;
//        return Padding(
//          padding: EdgeInsets.symmetric(
//            vertical: appSizeConfig.blockSizeVertical * 1,
//            horizontal: appSizeConfig.blockSizeHorizontal * 2,
//          ),
//          child: Column(
//            crossAxisAlignment:
//                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//            children: <Widget>[
//              Bubble(
//                padding: BubbleEdges.all(10),
//                elevation: 1.0,
//                nipOffset: 10,
//                nipWidth: 10,
//                nipHeight: 10,
//                color: kPrimaryColor,
//                nip: isMe ? BubbleNip.rightBottom : BubbleNip.leftBottom,
//                child: Text(
//                  '${barterConversationTextModel.text}',
//                  style: TextStyle(
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold,
//                      fontSize: 12),
//                ),
//              ),
//              SizedBox(
//                height: 5,
//              ),
//              Text(
//                isMe ? 'You' : '${barterConversationTextModel.userId}',
//                style: TextStyle(
//                  color: Color(0XFF647787),
//                  fontWeight: FontWeight.bold,
//                  fontSize: 12,
//                ),
//              ),
//            ],
//          ),
//        );
//      },
//    );
//  }
//}
//
//class _SendMessage extends StatefulWidget {
//  final String barterMessageId;
//  _SendMessage(
//    this.barterMessageId,
//  );
//
//  @override
//  __SendMessageState createState() => __SendMessageState();
//}
//
//class __SendMessageState extends State<_SendMessage> {
//  final _messageTextController = TextEditingController();
//  final _conversationCubit = getIt<ConversationCubit>();
//
//  @override
//  Widget build(BuildContext context) {
//    final appSizeConfig = AppSizeConfig(context);
//    return Container(
//      width: double.infinity,
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: [
//          Expanded(
//            child: TextField(
//              controller: _messageTextController,
//              keyboardType: TextInputType.multiline,
//              maxLines: null,
//              decoration: InputDecoration(
//                fillColor: Color(0XFFF8F8F8),
//                filled: true,
//                hintText: 'Type a new message',
//                hintStyle: GoogleFonts.openSans(
//                  color: Color(
//                    0XFF7D7D7D,
//                  ),
//                ),
//                border: OutlineInputBorder(
//                  borderSide: BorderSide(color: kPrimaryColor, width: 0.0),
//                  borderRadius: BorderRadius.all(
//                    Radius.circular(50.0),
//                  ),
//                ),
//                enabledBorder: OutlineInputBorder(
//                  borderSide: BorderSide(color: kPrimaryColor, width: 0.0),
//                  borderRadius: BorderRadius.all(
//                    Radius.circular(50.0),
//                  ),
//                ),
//                focusedBorder: OutlineInputBorder(
//                  borderSide: BorderSide(color: kPrimaryColor, width: 0.0),
//                  borderRadius: BorderRadius.all(
//                    Radius.circular(50.0),
//                  ),
//                ),
//              ),
//            ),
//          ),
//          Padding(
//            padding: EdgeInsets.symmetric(
//                horizontal: appSizeConfig.blockSizeHorizontal * 1),
//            child: BlocBuilder<CurrentUserCubit, CurrentUserState>(
//              builder: (_, state) {
//                final currentUser = state.currentUserModel;
//                return IconButton(
//                  onPressed: () {
//                    if (_messageTextController.text.isNotEmpty) {
//                      _conversationCubit.sendConversationText(
//                        barterMessageId: widget.barterMessageId,
//                        userId: currentUser.userId,
//                        message: _messageTextController.text,
//                      );
//
//                      print(_messageTextController.text);
//                      _messageTextController.clear();
//                    }
//                  },
//                  icon: Icon(
//                    Icons.send,
//                    color: kPrimaryColor,
//                  ),
//                );
//              },
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}
