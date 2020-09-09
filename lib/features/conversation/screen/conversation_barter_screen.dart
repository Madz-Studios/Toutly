import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/conversation/widgets/barter_offer_item.dart';
import 'package:Toutly/features/conversation/widgets/chat_stream.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:flutter/material.dart';

class ConversationBarterScreen extends StatelessWidget {
  final BarterMessageModel barterMessageModel;
  final UserModel otherUserModel;

  ConversationBarterScreen(
    this.barterMessageModel,
    this.otherUserModel,
  );

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '${otherUserModel.name}',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: BackOrCloseButton(
          isDialog: false,
          onPressed: () {
            Navigator.pop(context);
          },
          buttonColor: kPrimaryColor,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info,
              color: kPrimaryColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BarterOfferItem(
                    barterMessageModel,
                    otherUserModel,
                  ),
                  fullscreenDialog: true,
                ),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: appSizeConfig.blockSizeVertical * 1.5,
          horizontal: appSizeConfig.blockSizeHorizontal * 3,
        ),
        child: ChatStream(
          barterMessageModel: barterMessageModel,
          otherUser: otherUserModel,
        ),
      ),
    );
  }
}
