import 'dart:io';

import 'package:Toutly/core/cubits/barter_item/current_user/single_barter_item/delete_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/other_user/single_barter_item_other_user_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/make_offer/screen/make_offer_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:Toutly/shared/widgets/carousel/carousel_slider_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewBarterItemScreen extends StatelessWidget {
  final _currentUserCubit = getIt<CurrentUserCubit>();
  final _otherUserCubit = getIt<OtherUserCubit>();
  final _deleteBarterModelCurrentUserCubit =
      getIt<DeleteBarterModelCurrentUserCubit>();

  final _singleBarterItemOtherUserCubit =
      getIt<SingleBarterItemOtherUserCubit>();

  ///Check if the push screen is a dialog or not, if dialog the close icon will change and can delete item
  final bool isDialog;
  final BarterModel barterModel;
  ViewBarterItemScreen({
    @required this.isDialog,
    @required this.barterModel,
  });
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (context, currentUserState) {
        if (currentUserState.isSuccess) {
          final currentUser = currentUserState.currentUserModel;
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: BackOrCloseButton(
                buttonColor: kPrimaryColor,
                isDialog: isDialog,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                _getDeleteWidget(
                  context,
                  currentUser,
                  barterModel,
                ),
              ],
            ),
            body: BlocConsumer<DeleteBarterModelCurrentUserCubit,
                DeleteBarterModelCurrentUserState>(
              listener: (context, deleteBarterModelCurrentUserState) {
                if (deleteBarterModelCurrentUserState.isFailure) {
                  Scaffold.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                  '${deleteBarterModelCurrentUserState.info}'),
                            ),
                            Icon(Icons.error),
                          ],
                        ),
                        backgroundColor: Colors.red,
                      ),
                    );
                }
                if (deleteBarterModelCurrentUserState.isSubmitting) {
                  Scaffold.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        backgroundColor: kPrimaryColor,
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Deleting...'),
                            Platform.isIOS
                                ? CupertinoActivityIndicator()
                                : CircularProgressIndicator(),
                          ],
                        ),
                      ),
                    );
                }
                if (deleteBarterModelCurrentUserState.isSuccess) {
                  Scaffold.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        backgroundColor: kPrimaryColor,
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Successfully Deleted'),
                          ],
                        ),
                      ),
                    );
                }
              },
              builder: (context, currentUserState) {
                return _buildViewBarterContent(
                    appSizeConfig, context, currentUser);
              },
            ),
          );
        } else {
          return LoadingOrErrorWidgetUtil(currentUserState.info);
        }
      },
    );
  }

  Column _buildViewBarterContent(AppSizeConfig appSizeConfig,
      BuildContext context, UserModel currentUser) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          flex: 1,
          child: CarouselSliderCustom(barterModel.photosUrl ?? []),
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
                          barterModel.title ?? '',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: appSizeConfig.blockSizeVertical * 1.5,
                  ),
                  Text(
                    barterModel.description ?? '',
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
                  Text(barterModel.preferredItem ?? ''),
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
                  Text(barterModel.address ?? ''),
                  SizedBox(
                    height: appSizeConfig.blockSizeVertical * 3,
                  ),
                  _getActionButton(context, currentUser, barterModel),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getActionButton(
      BuildContext context, UserModel currentUser, BarterModel barterModel) {
    if (currentUser?.userId == barterModel?.userId) {
      return Container();
    } else {
      return ActionButton(
        title: 'Make an offer',
        onPressed: () {
          _makeOfferPressed(context, barterModel);
        },
      );
    }
  }

  Widget _getDeleteWidget(
      BuildContext context, UserModel currentUser, BarterModel barterModel) {
    if (currentUser?.userId == barterModel?.userId) {
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
      builder: (BuildContext subContext) {
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
                Navigator.pop(subContext);
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
      builder: (BuildContext subContext) {
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
                Navigator.pop(subContext);
              },
            ),
          ],
        );
      },
    );
  }

  void _deleteItemAndGoToUserListings(
      BarterModel barterModel, BuildContext context) {
    debugPrint('Deleted barter item id = ${barterModel.itemId}');
    _deleteBarterModelCurrentUserCubit.deleteBarterItem(barterModel);

    Navigator.pop(context);
    Navigator.of(context, rootNavigator: true).pop();

    /// refresh current user barter items
    _currentUserCubit.getCurrentLoggedInUser();
  }

  void _makeOfferPressed(
      BuildContext context, BarterModel otherUserBarterModel) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MakeOfferScreen(),
      ),
    );

    _singleBarterItemOtherUserCubit
        .setOtherUserSingleBarterItem(otherUserBarterModel);

    _otherUserCubit.getOtherUser(otherUserBarterModel.userId);
  }
}
