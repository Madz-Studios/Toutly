import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';

class ProfileWithRating extends StatelessWidget {
  final String userPhotoUrl;
  final String name;
  ProfileWithRating({@required this.userPhotoUrl, @required this.name});
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);

    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: userPhotoUrl == null || userPhotoUrl.isEmpty
              ? AssetImage('assets/images/profile_placeholder.png')
              : NetworkImage(userPhotoUrl),
        ),
        SizedBox(
          width: appSizeConfig.safeBlockHorizontal * 2.5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${name ?? ''}',
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
