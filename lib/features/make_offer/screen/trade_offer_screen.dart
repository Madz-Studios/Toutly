import 'package:Toutly/core/cubits/make_offer/make_offer_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/make_offer/widgets/trade_offer_form.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MakeOfferScreen extends StatelessWidget {
  final _makeOfferCubit = getIt<MakeOfferCubit>();
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
            _makeOfferCubit.clearAllItemsToOffer();
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
          child: TradeOfferForm(),
        ),
      ),
    );
  }
}
