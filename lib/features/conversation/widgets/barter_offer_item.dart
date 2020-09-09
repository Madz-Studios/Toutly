import 'package:Toutly/core/cubits/barter_messages/barter/items/barter_items_cubit.dart';
import 'package:Toutly/core/cubits/barter_messages/offer/items/offer_items_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/conversation/widgets/barter_item_card.dart';
import 'package:Toutly/features/conversation/widgets/offer_item_card.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BarterOfferItem extends StatelessWidget {
  final BarterMessageModel barterMessageModel;
  final UserModel otherUserModel;
  final _barterItemCubit = getIt<BarterItemsCubit>();
  final _offerItemCubit = getIt<OfferItemsCubit>();

  BarterOfferItem(
    this.barterMessageModel,
    this.otherUserModel,
  );

  @override
  Widget build(BuildContext context) {
    _barterItemCubit.getBarterItem(barterMessageModel.barterItemId);
    _offerItemCubit.getOfferItems(barterMessageModel.barterOfferItems);
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackOrCloseButton(
          buttonColor: kPrimaryColor,
          isDialog: true,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          _buildBarterItem(appSizeConfig),
          _buildOfferItem(appSizeConfig),
        ],
      ),
    );
  }

  Widget _buildOfferItem(AppSizeConfig appSizeConfig) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: appSizeConfig.blockSizeVertical * 1.5,
        horizontal: appSizeConfig.blockSizeHorizontal * 3,
      ),
      child: Column(
        children: [
          BlocBuilder<CurrentUserCubit, CurrentUserState>(
            builder: (_, state) {
              final currentUser = state.currentUserModel;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  currentUser.userId == barterMessageModel.userBarter
                      ? Text(
                          'Item being offered by ${currentUser.userId == barterMessageModel.userBarter ? otherUserModel.name : currentUser.name}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        )
                      : Text(
                          'Item I want to offer to ${currentUser.userId == barterMessageModel.userBarter ? currentUser.name : otherUserModel.name}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                ],
              );
            },
          ),
          OfferItemCard(),
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
            'Trading for:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          BarterItemCard(),
        ],
      ),
    );
  }
}
