import 'package:Toutly/core/cubits/barter_messages/conversation/conversation_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SendMessage extends StatefulWidget {
  final String barterMessageId;
  SendMessage(
    this.barterMessageId,
  );

  @override
  _SendMessageState createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  final _messageTextController = TextEditingController();
  final _conversationCubit = getIt<ConversationCubit>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              controller: _messageTextController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                fillColor: Color(0XFFF8F8F8),
                filled: true,
                hintText: 'Type a new message',
                hintStyle: TextStyle(
                  color: Color(
                    0XFF7D7D7D,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor, width: 0.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor, width: 0.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor, width: 0.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 1),
            child: BlocBuilder<CurrentUserCubit, CurrentUserState>(
              builder: (_, state) {
                final currentUser = state.currentUserModel;
                return IconButton(
                  onPressed: () {
                    if (_messageTextController.text.isNotEmpty) {
                      _conversationCubit.sendConversationText(
                        barterMessageId: widget.barterMessageId,
                        userId: currentUser.userId,
                        message: _messageTextController.text,
                      );

                      print(_messageTextController.text);
                      _messageTextController.clear();
                    }
                  },
                  icon: Icon(
                    Icons.send,
                    color: kPrimaryColor,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
