import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/trade_offer/screen/trade_offer_screen.dart';
import 'package:Toutly/features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:Toutly/shared/widgets/carousel/carousel_slider_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewBarterItemScreen extends StatelessWidget {
  final _viewBarterItemBloc = getIt<ViewBarterItemBloc>();

  ///Check if the push screen is a dialog or not, if dialog the close icon will change and can delete item
  final bool isDialog;
  final UserModel barterUser;
  ViewBarterItemScreen({
    @required this.isDialog,
    this.barterUser,
  });
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<ViewBarterItemBloc, ViewBarterItemState>(
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: BackOrCloseButton(
              isDialog: isDialog,
            ),
            actions: [
              _getDeleteWidget(context, state),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 1,
                child: CarouselSliderCustom(state.barterModel.photosUrl),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: appSizeConfig.blockSizeVertical * 1.5,
                    horizontal: appSizeConfig.blockSizeHorizontal * 5,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 5,
                              child: Text(
                                state.barterModel.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            Visibility(
                              visible: state.currentUser?.uid ==
                                  state.barterModel?.userId,
                              child: Flexible(
                                flex: 1,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                    color: kPrimaryColor,
                                  ),
                                  onPressed: () {
                                    print('Edit');
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: appSizeConfig.blockSizeVertical * 1.5,
                        ),
                        Text(
                          state.barterModel.description,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(
                          height: appSizeConfig.blockSizeVertical * 1.5,
                        ),
                        Text(
                          'Preferred Item',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: appSizeConfig.blockSizeVertical * 1.5,
                        ),
                        Text(state.barterModel.preferredItem),
                        SizedBox(
                          height: appSizeConfig.blockSizeVertical * 1.5,
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: appSizeConfig.blockSizeVertical * 1.5,
                        ),
                        Text(state.barterModel.address),
                        SizedBox(
                          height: appSizeConfig.blockSizeVertical * 3,
                        ),
                        _getActionButton(context, state),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
      },
    );
  }

  Widget _getActionButton(BuildContext context, ViewBarterItemState state) {
    final currentUser = state.currentUser;
    final barterModel = state.barterModel;
    if (currentUser?.uid == barterModel?.userId) {
      return Container();
    } else {
      return ActionButton(
        title: 'Make an offer',
        onPressed: () {
          _tradeItemPressed(context, state.barterModel);
        },
      );
    }
  }

  Widget _getDeleteWidget(BuildContext context, ViewBarterItemState state) {
    final currentUser = state.currentUser;
    final barterModel = state.barterModel;

    if (currentUser?.uid == barterModel?.userId) {
      return Align(
        alignment: Alignment.topRight,
        child: IconButton(
          icon: Icon(
            Icons.delete,
            color: kPrimaryColor,
          ),
          onPressed: () {
            if (Platform.isIOS) {
              _showCupertinoDialog(context, barterModel);
            } else {
              _showMaterialDialog(context, barterModel);
            }
          },
        ),
      );
    } else {
      return Container();
    }
  }

  void _showMaterialDialog(BuildContext mainContext, BarterModel barterModel) {
    showDialog(
      barrierDismissible: false,
      context: mainContext,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Are you sure you want to delete this item?"),
          actions: [
            FlatButton(
              child: Text(
                "Yes",
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                _deleteItemAndGoToUserListings(barterModel, mainContext);
              },
            ),
            FlatButton(
              child: Text("No"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoDialog(BuildContext mainContext, BarterModel barterModel) {
    showDialog(
      barrierDismissible: true,
      context: mainContext,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("Are you sure you want to delete this item?"),
          actions: <Widget>[
            CupertinoDialogAction(
              isDefaultAction: true,
              textStyle: TextStyle(color: Colors.red),
              child: Text("Yes"),
              onPressed: () {
                _deleteItemAndGoToUserListings(barterModel, mainContext);
              },
            ),
            CupertinoDialogAction(
              isDefaultAction: true,
              child: Text("No"),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _deleteItemAndGoToUserListings(
      BarterModel barterModel, BuildContext context) {
    print('Deleted barter item id = ${barterModel.itemId}');

    Navigator.pop(context);
    Navigator.of(context, rootNavigator: true).pop();
    _viewBarterItemBloc.add(
      ViewBarterItemEvent.deleteBarterItem(barterModel),
    );
  }

  void _tradeItemPressed(BuildContext context, BarterModel barterModel) async {
    print('Trade action was pressed');

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TradeOfferScreen(
          barterModel: barterModel,
          barterUser: barterUser,
        ),
      ),
    );
  }
}
