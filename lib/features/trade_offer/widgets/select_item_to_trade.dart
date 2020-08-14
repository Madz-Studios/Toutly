import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/trade_offer/bloc/trade_offer_bloc.dart';
import 'package:Toutly/shared/bloc/barter/barter_bloc.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'trade_barter_item_list.dart';

class SelectItemToTrade extends StatelessWidget {
  final _tradeOfferBloc = getIt<TradeOfferBloc>();
  final _barterBloc = getIt<BarterBloc>();
  SelectItemToTrade({
    Key key,
    @required this.barterModel,
  }) : super(key: key);

  final BarterModel barterModel;

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<UserBloc, UserState>(
      builder: (_, userState) {
        return Container(
          height: appSizeConfig.blockSizeVertical * 7.5,
          width: appSizeConfig.blockSizeHorizontal * 17.5,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0XFFB4B4B4),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                8.0,
              ),
            ),
          ),
          child: barterModel == null
              ? IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Color(0XFFB4B4B4),
                    size: appSizeConfig.blockSizeVertical * 4,
                  ),
                  onPressed: () {
                    final currentUser = userState.userModel;
                    _showAddBarterBottomSheet(currentUser, context);
                  },
                )
              : ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              barterModel?.photosUrl[0] ?? '',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          child: Icon(
                            Icons.remove_circle,
                            color: Color(0XFFB4B4B4),
                          ),
                          onTap: () {
                            _tradeOfferBloc.add(
                                TradeOfferEvent.removeItemToTrade(barterModel));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }

  void _showAddBarterBottomSheet(UserModel currentUser, BuildContext context) {
    showModalBottomSheet(
      isDismissible: false,
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
      ),
      builder: (BuildContext bc) {
        _barterBloc.add(
          BarterEvent.getAllUserBarterItems(currentUser?.userId ?? ''),
        );
        return TradeBarterItemList();
      },
    );
  }
}
