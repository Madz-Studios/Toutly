import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/conversation/widgets/barter_item_card.dart';
import 'package:Toutly/features/conversation/widgets/chat.dart';
import 'package:Toutly/features/conversation/widgets/offer_item_card.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:flutter/material.dart';

class ConversationBarterScreen extends StatelessWidget {
  final BarterMessageModel barterMessageModel;
  final UserModel barterUser;

  ConversationBarterScreen(
    this.barterMessageModel,
    this.barterUser,
  );

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '${barterUser.name}',
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: appSizeConfig.blockSizeVertical * 1.5,
            horizontal: appSizeConfig.blockSizeHorizontal * 3,
          ),
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    _buildBarterItem(appSizeConfig),
                    _buildOfferItem(appSizeConfig, context),
                  ],
                ),
              ),
              Chat(
                barterMessageId: barterMessageModel.barterMessageId,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOfferItem(AppSizeConfig appSizeConfig, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: appSizeConfig.blockSizeVertical * 1.5,
        horizontal: appSizeConfig.blockSizeHorizontal * 3,
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              barterMessageModel.barterOfferItems.length > 1
                  ? Text(
                      'Items being offered by ${barterUser.name}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    )
                  : Text(
                      'Item I want to offer by ${barterUser.name}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
            ],
          ),
          OfferItemCard(
            offerItems: barterMessageModel.barterOfferItems,
          ),
        ],
      ),
    );
  }

  Widget _buildBarterItem(AppSizeConfig appSizeConfig) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: appSizeConfig.blockSizeVertical * 1.5,
        horizontal: appSizeConfig.blockSizeHorizontal * 3,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Bartering for:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          BarterItemCard(
            barterItemId: barterMessageModel.barterItemId,
          ),
        ],
      ),
    );
  }
}
