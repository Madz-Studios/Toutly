import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/trade_offer/bloc/trade_offer_bloc.dart';
import 'package:Toutly/features/trade_offer/widgets/trade_barter_item_card.dart';
import 'package:Toutly/features/trade_offer/widgets/trade_barter_item_list.dart';
import 'package:Toutly/features/trade_offer/widgets/trade_text_area.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:Toutly/shared/widgets/profile_with_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TradeOfferScreen extends StatefulWidget {
  final BarterModel barterModel;
  final UserModel barterUser;

  TradeOfferScreen({
    @required this.barterModel,
    @required this.barterUser,
  });

  @override
  _TradeOfferScreenState createState() => _TradeOfferScreenState();
}

class _TradeOfferScreenState extends State<TradeOfferScreen> {
  final _tradeOfferBloc = getIt<TradeOfferBloc>();
  final _txtAreaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);

    return Scaffold(
      appBar: AppBar(
        leading: BackOrCloseButton(
          isDialog: false,
          buttonColor: Colors.black,
          onPressed: () {
            _tradeOfferBloc.add(TradeOfferEvent.clearItemToTrade());
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 2,
              ),
              TradeBarterItemCard(widget.barterModel),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: Text(
                  'Make your offer!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: Text(
                  'More chane of winning this item when you write a personal message. '
                  'You may also ask questions to the person.',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: ProfileWithRating(
                  user: widget.barterUser,
                ),
              ),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 2,
                ),
                child: TradeTextArea(_txtAreaController),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: Text(
                  'Note: Cash offer is not allowed!',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: Text(
                  'Select your item',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: Text(
                  'Select the item or items you want to trade for from your item list.',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: Text(
                  'Maximum of 4 items.',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 4,
                ),
                child: BlocBuilder<TradeOfferBloc, TradeOfferState>(
                  builder: (context, state) {
                    List<BarterModel> list = [];
                    state.pickedBarterItem.forEach((k, v) => list.add(v));
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SelectItemToTrade(
                          appSizeConfig: appSizeConfig,
                          barterModel: list.length == 1 ? list[0] : null,
                        ),
                        SelectItemToTrade(
                          appSizeConfig: appSizeConfig,
                          barterModel: list.length == 2 ? list[1] : null,
                        ),
                        SelectItemToTrade(
                          appSizeConfig: appSizeConfig,
                          barterModel: list.length == 3 ? list[2] : null,
                        ),
                        SelectItemToTrade(
                          appSizeConfig: appSizeConfig,
                          barterModel: list.length == 4 ? list[3] : null,
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: appSizeConfig.blockSizeVertical * 4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 10,
                ),
                child: ActionButton(
                  title: 'Submit',
                  onPressed: () {
                    print('Submit trade offer');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectItemToTrade extends StatelessWidget {
  const SelectItemToTrade({
    Key key,
    @required this.appSizeConfig,
    @required this.barterModel,
  }) : super(key: key);

  final AppSizeConfig appSizeConfig;
  final BarterModel barterModel;

  @override
  Widget build(BuildContext context) {
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
                _showAddBarterBottomSheet(context);
              },
            )
          : Image.network(barterModel.photosUrl[0] ?? ''),
    );
  }
}

void _showAddBarterBottomSheet(BuildContext context) {
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
      return TradeBarterItemList();
    },
  );
}
