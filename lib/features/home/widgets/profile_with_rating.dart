import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProfileWithRating extends StatelessWidget {
  final UserModel user;

  const ProfileWithRating({
    Key key,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile_pic.png'),
        ),
        SizedBox(
          width: appSizeConfig.safeBlockHorizontal * 2.5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${user.name}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SmoothStarRating(
              allowHalfRating: false,
              onRated: (v) {},
              starCount: 5,
              rating: 3.5,
              size: 14.0,
              isReadOnly: true,
              color: Color(0XFFEFBC38),
              borderColor: Color(0XFFDDDDDD),
              spacing: 0.0,
            ),
          ],
        ),
      ],
    );
  }
}
