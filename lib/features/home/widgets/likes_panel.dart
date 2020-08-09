import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LikesPanel extends StatefulWidget {
  LikesPanel({
    this.barterUser,
    this.currentUser,
    this.itemId,
  });

  final UserModel barterUser; // user of the barter item
  final UserModel currentUser; // current logged in user
  final String itemId; // barter item id

  @override
  _LikesPanelState createState() => _LikesPanelState();
}

class _LikesPanelState extends State<LikesPanel> {
  final _userBloc = getIt<UserBloc>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    bool _isLiked =
        widget.currentUser.barterLikesList?.contains(widget.itemId) ?? false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Spacer(),
        Visibility(
          visible: widget.currentUser.userId != widget.barterUser.userId,
          child: IconButton(
            icon: _isLiked
                ? SvgPicture.asset(
                    'assets/icons/likes.svg',
                    height: appSizeConfig.blockSizeVertical * 3,
                    color: Colors.red,
                  )
                : SvgPicture.asset(
                    'assets/icons/unpressed-likes.svg',
                    height: appSizeConfig.blockSizeVertical * 3,
                  ),
            onPressed: () {
              setState(() {
                _isLiked = !_isLiked;
                debugPrint('onPress liked = $_isLiked');
              });

              updateUserLikes(_isLiked);
            },
          ),
        ),
      ],
    );
  }

  void updateUserLikes(bool isLiked) {
    if (isLiked) {
      List<String> barterLikesList = [];
      barterLikesList.addAll(widget.currentUser?.barterLikesList ?? []);

      if (!barterLikesList.contains(widget.itemId)) {
        barterLikesList.add(widget.itemId);
        widget.currentUser.barterLikesList = barterLikesList;
        _userBloc.add(
          UserEvent.updateCurrentLoggedInUser(
            widget.currentUser,
          ),
        );
      }
    } else {
      List<String> barterLikesList = [];
      barterLikesList.addAll(widget.currentUser?.barterLikesList ?? []);

      if (barterLikesList.contains(widget.itemId)) {
        barterLikesList.remove(widget.itemId);
        widget.currentUser.barterLikesList = barterLikesList;
        _userBloc.add(
          UserEvent.updateCurrentLoggedInUser(
            widget.currentUser,
          ),
        );
      }
    }

    // need to update current user to reflect change in likes list
    _userBloc.add(UserEvent.getCurrentLoggedInUser());
  }
}
