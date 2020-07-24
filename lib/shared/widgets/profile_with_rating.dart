import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProfileWithRating extends StatelessWidget {
  final UserModel user;

  const ProfileWithRating({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: user.photoUrl == null || user.photoUrl.isEmpty
              ? AssetImage('assets/images/profile_placeholder.png')
              : NetworkImage(user.photoUrl),
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
            RatingBar(
              ignoreGestures: true,
              initialRating: user?.userRating == null ? 0 : user.userRating,
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: appSizeConfig.blockSizeVertical * 2,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (value) {},
            ),
          ],
        ),
      ],
    );
  }
}
