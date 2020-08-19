import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LikesPanel extends StatelessWidget {
  LikesPanel({
    this.itemId,
  });

  final String itemId; // barter item id

  final _currentUserCubit = getIt<CurrentUserCubit>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    bool _isLiked;
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (_, currentUserState) {
        final currentUser = currentUserState.currentUserModel;
        _isLiked = currentUser.barterLikesList?.contains(itemId) ?? false;
        return IconButton(
          icon: _isLiked
              ? SvgPicture.asset(
                  'assets/icons/saved.svg',
                  height: appSizeConfig.blockSizeVertical * 3,
                  color: Colors.red,
                )
              : SvgPicture.asset(
                  'assets/icons/saved.svg',
                  height: appSizeConfig.blockSizeVertical * 3,
                  color: Colors.white,
                ),
          onPressed: () {
            _isLiked = !_isLiked;
            debugPrint('onPress liked = $_isLiked');
            updateUserLikes(_isLiked, currentUser);
          },
        );
      },
    );
  }

  void updateUserLikes(bool isLiked, UserModel currentUser) {
    if (isLiked) {
      List<String> barterLikesList = [];
      barterLikesList.addAll(currentUser?.barterLikesList ?? []);

      if (!barterLikesList.contains(itemId)) {
        barterLikesList.add(itemId);
        currentUser.barterLikesList = barterLikesList;
        _currentUserCubit.updateCurrentLoggedInUser(currentUser);
      }
    } else {
      List<String> barterLikesList = [];
      barterLikesList.addAll(currentUser?.barterLikesList ?? []);

      if (barterLikesList.contains(itemId)) {
        barterLikesList.remove(itemId);
        currentUser.barterLikesList = barterLikesList;
        _currentUserCubit.updateCurrentLoggedInUser(currentUser);
      }
    }
  }
}
