import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/trade_offer/bloc/trade_offer_bloc.dart';
import 'package:Toutly/features/trade_offer/widgets/trade_offer_form.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TradeOfferScreen extends StatelessWidget {
  final BarterModel barterItem;
  final UserModel barterUser;
  final UserModel currentUser;

  TradeOfferScreen({
    @required this.barterItem,
    @required this.barterUser,
    @required this.currentUser,
  });

  final _tradeOfferBloc = getIt<TradeOfferBloc>();
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackOrCloseButton(
          isDialog: false,
          buttonColor: kPrimaryColor,
          onPressed: () {
            _tradeOfferBloc.add(TradeOfferEvent.clearItemToTrade());
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Trade offer',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: appSizeConfig.blockSizeHorizontal * 2,
          ),
          child: TradeOfferForm(
            currentUser: currentUser,
            barterUser: barterUser,
            barterItem: barterItem,
          ),
        ),
      ),
    );
  }
}
