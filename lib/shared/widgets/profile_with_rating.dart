import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';

class ProfileWithRating extends StatelessWidget {
  final UserModel userModel;
  ProfileWithRating(this.userModel);
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);

    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage:
              userModel?.photoUrl == null || userModel.photoUrl.isEmpty
                  ? AssetImage('assets/images/profile_placeholder.png')
                  : NetworkImage(userModel.photoUrl),
        ),
        SizedBox(
          width: appSizeConfig.safeBlockHorizontal * 2.5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${userModel?.name ?? ''}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
