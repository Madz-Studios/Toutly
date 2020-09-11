import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/saved_items/saved_item_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/signup/screen/modal_signup_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SavedPanel extends StatefulWidget {
  SavedPanel({
    this.itemId,
  });

  final String itemId;
  @override
  _SavedPanelState createState() => _SavedPanelState();
}

class _SavedPanelState extends State<SavedPanel> {
  final _currentUserCubit = getIt<CurrentUserCubit>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    bool _isLiked = false;
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (_, currentUserState) {
        final currentUser = currentUserState.currentUserModel;
        // _isLiked = currentUser.saveItems?.map(itemId) ?? false;
        if (currentUserState.isSuccess) {
          for (final savedItem in currentUser?.saveItems) {
            if (savedItem.itemId == widget.itemId) {
              _isLiked = true;
            }
          }
        }

        return IconButton(
          icon: _isLiked
              ? SvgPicture.asset(
                  'assets/icons/saved.svg',
                  height: appSizeConfig.blockSizeVertical * 3,
                  color: kSecondaryRedAccentColor,
                )
              : SvgPicture.asset(
                  'assets/icons/saved.svg',
                  height: appSizeConfig.blockSizeVertical * 3,
                  color: kSecondaryWhiteSeventyColor,
                ),
          onPressed: () {
            if (currentUserState.isAnonymous) {
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.white,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                ),
                builder: (BuildContext bc) {
                  return ModalSignUpScreen();
                },
              );
            } else {
              setState(() {
                _isLiked = !_isLiked;
              });
              debugPrint('onPress liked = $_isLiked');
              updateUserSaves(_isLiked, currentUser, widget.itemId);
            }
          },
        );
      },
    );
  }

  void updateUserSaves(bool isLiked, UserModel currentUser, String itemId) {
    SavedItemModel savedItemModel = SavedItemModel(itemId: itemId);
    if (isLiked) {
      _currentUserCubit.createSavedItemForCurrentUser(
          currentUser, savedItemModel);
    } else {
      _currentUserCubit.deleteSavedItemForCurrentUser(
          currentUser, savedItemModel);
    }
    _currentUserCubit.getCurrentLoggedInUser();
  }
}
