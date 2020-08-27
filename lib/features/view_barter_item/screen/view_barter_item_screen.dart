import 'dart:io';

import 'package:Toutly/core/cubits/barter_item/current_user/single_barter_item/delete/delete_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/current_user/single_barter_item/update/update_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/other_user/single_barter_item_other_user_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/make_offer/screen/make_offer_screen.dart';
import 'package:Toutly/features/post/widgets/post_barter_Item_textfield.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:Toutly/shared/widgets/carousel/carousel_slider_custom.dart';
import 'package:Toutly/shared/widgets/saved_panel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewBarterItemScreen extends StatefulWidget {
  ///Check if the push screen is a dialog or not, if dialog the close icon will change and can delete item
  final bool isDialog;
  final BarterModel barterModel;
  final bool showMakeOfferButton; // hide/show make an offer button
  ViewBarterItemScreen({
    @required this.isDialog,
    @required this.barterModel,
    this.showMakeOfferButton = true,
  });

  @override
  _ViewBarterItemScreenState createState() => _ViewBarterItemScreenState();
}

class _ViewBarterItemScreenState extends State<ViewBarterItemScreen> {
  final _currentUserCubit = getIt<CurrentUserCubit>();
  final _updateBarterModelCurrentUserCubit =
      getIt<UpdateBarterModelCurrentUserCubit>();

  final _deleteBarterModelCurrentUserCubit =
      getIt<DeleteBarterModelCurrentUserCubit>();

  final _singleBarterItemOtherUserCubit =
      getIt<SingleBarterItemOtherUserCubit>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _preferredItemController = TextEditingController();

  bool isEdit = false;

  @override
  void initState() {
    super.initState();

    _titleController.text = widget.barterModel.title;
    _descriptionController.text = widget.barterModel.description;
    _preferredItemController.text = widget.barterModel.preferredItem;

    _titleController.addListener(_onTitleChanged);
    _descriptionController.addListener(_onDescriptionChanged);
    _preferredItemController.addListener(_onPreferredItemChanged);
  }

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    _preferredItemController.dispose();
  }

  void _onTitleChanged() {
    _updateBarterModelCurrentUserCubit.titleChanged(
      _titleController.text,
    );
  }

  void _onDescriptionChanged() {
    _updateBarterModelCurrentUserCubit.descriptionChanged(
      _descriptionController.text,
    );
  }

  void _onPreferredItemChanged() {
    _updateBarterModelCurrentUserCubit.preferredItemChanged(
      _preferredItemController.text,
    );
  }

  bool get _isPopulated =>
      _titleController.text.isNotEmpty &&
      _descriptionController.text.isNotEmpty &&
      _preferredItemController.text.isNotEmpty;

  bool _isUpdateButtonEnabled(UpdateBarterModelCurrentUserState state) {
    return state.isUpdatePostFormValid && _isPopulated && !state.isSubmitting;
  }

  _onFormSubmitted() {
    if (isEdit) {
      debugPrint('_updateBarterModelCurrentUserCubit updateBarterItem called!');
      widget.barterModel.title = _titleController.text;
      widget.barterModel.description = _descriptionController.text;
      widget.barterModel.preferredItem = _preferredItemController.text;
      widget.barterModel.dateUpdated = DateTime.now();

      _updateBarterModelCurrentUserCubit.updateBarterItem(widget.barterModel);
    }

    setState(() {
      isEdit = !isEdit;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (context, currentUserState) {
        final currentUser = currentUserState.currentUserModel;
        return Scaffold(
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
                      backgroundColor: kSecondaryRedAccentColor,
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
          child: Stack(
            children: [
              CarouselSliderCustom(widget.barterModel.photosUrl ?? []),
              if (widget.barterModel.userId != currentUser.userId)
                SafeArea(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SavedPanel(
                      itemId: widget.barterModel.itemId,
                    ),
                  ),
                )
              else
                Container(),
              SafeArea(
                child: _getDeleteWidget(
                  context,
                  currentUser,
                  widget.barterModel,
                ),
              ),
              SafeArea(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: BackOrCloseButton(
                    buttonColor: kPrimaryColor,
                    isDialog: widget.isDialog,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
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
                  isEdit
                      ? PostItemTextField(
                          title: 'Title',
                          description:
                              'Describe what you are bartering in a few words',
                          controller: _titleController,
                          readOnly: false,
                          maxLength: 50,
                          maxLines: 1,
                        )
                      : Text(
                          widget.barterModel.title ?? '',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                  SizedBox(
                    height: appSizeConfig.blockSizeVertical * 1.5,
                  ),
                  isEdit
                      ? PostItemTextField(
                          title: 'Description',
                          description:
                              'Describe what you are bartering in detail',
                          controller: _descriptionController,
                          readOnly: false,
                          maxLength: 200,
                          maxLines: 4,
                        )
                      : Text(
                          widget.barterModel.description ?? '',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0,
                          ),
                        ),
                  SizedBox(
                    height: appSizeConfig.blockSizeVertical * 1.5,
                  ),
                  isEdit
                      ? PostItemTextField(
                          title: 'Preferred Item',
                          description: 'Describe what you want in return',
                          controller: _preferredItemController,
                          readOnly: false,
                          maxLength: 100,
                          maxLines: 2,
                        )
                      : Text(
                          'Preferred Item',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                  SizedBox(
                    height: appSizeConfig.blockSizeVertical * 1.5,
                  ),
                  isEdit
                      ? Container()
                      : Text(widget.barterModel.preferredItem ?? ''),
                  SizedBox(
                    height: appSizeConfig.blockSizeVertical * 1.5,
                  ),
                  isEdit
                      ? Container()
                      : Text(
                          'Location',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                  SizedBox(
                    height: appSizeConfig.blockSizeVertical * 1.5,
                  ),
                  isEdit ? Container() : Text(widget.barterModel.address ?? ''),
                  SizedBox(
                    height: appSizeConfig.blockSizeVertical * 3,
                  ),
                  _getActionButton(context, currentUser, widget.barterModel),
                  SizedBox(
                    height: appSizeConfig.blockSizeVertical * 3,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getActionButton(
    BuildContext context,
    UserModel currentUser,
    BarterModel barterModel,
  ) {
    if (currentUser?.userId == barterModel?.userId) {
      return BlocBuilder<UpdateBarterModelCurrentUserCubit,
          UpdateBarterModelCurrentUserState>(
        builder: (_, state) {
          return ActionButton(
            title: isEdit ? 'Save' : 'Edit',
            onPressed: _isUpdateButtonEnabled(state) ? _onFormSubmitted : null,
          );
        },
      );
    } else {
      return widget.showMakeOfferButton
          ? ActionButton(
              title: 'Make an offer',
              onPressed: () {
                _makeOfferPressed(context, barterModel);
              },
            )
          : Container();
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
                style: TextStyle(
                  color: kSecondaryRedAccentColor,
                ),
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
              textStyle: TextStyle(
                color: kSecondaryRedAccentColor,
              ),
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
  }
}
