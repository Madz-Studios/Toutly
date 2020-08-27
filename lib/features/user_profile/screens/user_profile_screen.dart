import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/edit_profile/screen/edit_profile_screen.dart';
import 'package:Toutly/features/user_profile/widgets/user_profile_tab_menu.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (context, currentUserState) {
        if (currentUserState.isSuccess) {
          final currentUser = currentUserState.currentUserModel;
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(
                appSizeConfig.blockSizeVertical * 7.5,
              ),
              child: AppBar(
                backgroundColor: kPrimaryColor,
                centerTitle: true,
                title: Text(
                  'Profile',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfileScreen(currentUser),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: appSizeConfig.safeBlockVertical * 3,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: appSizeConfig.safeBlockHorizontal * 3,
                  ),
                  child: _UserInfo(currentUser),
                ),
                SizedBox(
                  height: appSizeConfig.safeBlockVertical * 3,
                ),
                Expanded(
                  child: UserProfileTabMenu(),
                ),
              ],
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}

class _UserInfo extends StatelessWidget {
  final UserModel userModel;

  _UserInfo(this.userModel);
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: appSizeConfig.safeBlockHorizontal * 3,
          ),
          child: CircleAvatar(
            backgroundImage:
                userModel.photoUrl == null || userModel.photoUrl.isEmpty
                    ? AssetImage('assets/images/profile_placeholder.png')
                    : CachedNetworkImageProvider(userModel.photoUrl),
            radius: appSizeConfig.safeBlockVertical * 5,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userModel.name ?? '',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                userModel.address ?? '',
                overflow: TextOverflow.fade,
                softWrap: true,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
