import 'package:Toutly/core/cubits/barter_messages/barter/items/barter_items_cubit.dart';
import 'package:Toutly/core/cubits/barter_messages/offer/items/offer_items_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversationOfferScreen extends StatefulWidget {
  final BarterMessageModel barterMessageModel;
  final UserModel barterUser;

  ConversationOfferScreen(
    this.barterMessageModel,
    this.barterUser,
  );

  @override
  _ConversationOfferScreenState createState() =>
      _ConversationOfferScreenState();
}

class _ConversationOfferScreenState extends State<ConversationOfferScreen> {
  final _offerItemCubit = getIt<OfferItemsCubit>();
  final _barterItemCubit = getIt<BarterItemsCubit>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '${widget.barterUser.name}',
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
          child: Card(
            child: Column(
              children: [
                _buildOfferItem(appSizeConfig),
                _buildBarterItem(appSizeConfig),
              ],
            ),
          ),
        ),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              widget.barterMessageModel.barterOfferItems.length > 1
                  ? Text(
                      'Items I want to offer to ${widget.barterUser.name}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    )
                  : Text(
                      'Item I want to offer to ${widget.barterUser.name}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
            ],
          ),
          _buildFutureOfferItems(appSizeConfig),
        ],
      ),
    );
  }

  Widget _buildFutureOfferItems(AppSizeConfig appSizeConfig) {
    _offerItemCubit.getOfferItems(widget.barterMessageModel.barterOfferItems);
    return BlocBuilder<OfferItemsCubit, OfferItemsState>(
      builder: (context, offerItemsState) {
        if (offerItemsState.isSuccess) {
          List<Widget> offeredItems = [];
          for (BarterModel barterModel in offerItemsState.offerItems) {
            offeredItems.add(
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      height: appSizeConfig.blockSizeVertical * 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            barterModel.photosUrl[0],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: appSizeConfig.blockSizeVertical * 1.0,
                        horizontal: appSizeConfig.blockSizeHorizontal * 1.5,
                      ),
                      child: Container(
                        height: appSizeConfig.blockSizeVertical * 7.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              '${barterModel.title}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: appSizeConfig.blockSizeVertical * 0.5,
                            ),
                            Text(
                              '${barterModel.title}',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12.0,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: appSizeConfig.blockSizeVertical * 0.5,
                            ),
                            GestureDetector(
                              child: Text(
                                "view details",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue,
                                  fontSize: 12,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ViewBarterItemScreen(
                                      barterModel: barterModel,
                                      isDialog: false,
                                      showMakeOfferButton: false,
                                    ),
                                    fullscreenDialog: true,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return Column(
            children: offeredItems,
          );
        }
        return Container();
      },
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
          _buildFutureBarterItem(appSizeConfig),
        ],
      ),
    );
  }

  Widget _buildFutureBarterItem(AppSizeConfig appSizeConfig) {
    _barterItemCubit.getBarterItem(widget.barterMessageModel.barterItemId);
    return BlocBuilder<BarterItemsCubit, BarterItemsState>(
      builder: (_, barterItemsState) {
        if (barterItemsState.isSuccess) {
          final barterModel = barterItemsState.barterItem;
          return barterModel != null
              ? Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        height: appSizeConfig.blockSizeVertical * 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              barterModel.photosUrl[0],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: appSizeConfig.blockSizeVertical * 1.0,
                          horizontal: appSizeConfig.blockSizeHorizontal * 1.5,
                        ),
                        child: Container(
                          height: appSizeConfig.blockSizeVertical * 7.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                '${barterModel.title}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: appSizeConfig.blockSizeVertical * 0.5,
                              ),
                              Text(
                                '${barterModel.title}',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.0,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: appSizeConfig.blockSizeVertical * 0.5,
                              ),
                              GestureDetector(
                                child: Text(
                                  "view details",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.blue,
                                    fontSize: 12,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ViewBarterItemScreen(
                                            barterModel: barterModel,
                                            isDialog: false,
                                            showMakeOfferButton: false,
                                          ),
                                      fullscreenDialog: true,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Center(
                  child: Text(
                    'Item is no longer available.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.red,
                    ),
                  ),
                );
        }
        return Container();
      },
    );
  }
}
