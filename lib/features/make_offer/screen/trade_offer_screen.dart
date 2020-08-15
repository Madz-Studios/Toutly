import 'package:Toutly/core/cubits/barter_item/other_user/single_barter_item_other_user_cubit.dart';
import 'package:Toutly/core/cubits/make_offer/make_offer_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/make_offer/widgets/trade_offer_form.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            _makeOfferCubit.reset();
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
          child: BlocBuilder<CurrentUserCubit, CurrentUserState>(
            builder: (_, currentUserState) {
              final currentUser = currentUserState.currentUserModel;
              return BlocBuilder<SingleBarterItemOtherUserCubit,
                  SingleBarterItemOtherUserState>(
                builder: (_, singleBarterItemOtherUserState) {
                  final otherUserBarterItem =
                      singleBarterItemOtherUserState.otherUserBarterItem;
                  return TradeOfferForm(currentUser, otherUserBarterItem);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
