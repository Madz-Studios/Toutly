import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class UserInfo extends StatelessWidget {
  final UserState userState;

  UserInfo(this.userState);
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
            backgroundImage: userState.userModel?.photoUrl == null ||
                    userState.userModel.photoUrl.isEmpty
                ? AssetImage('assets/images/profile_placeholder.png')
                : CachedNetworkImageProvider(userState.userModel?.photoUrl),
            radius: appSizeConfig.safeBlockVertical * 5,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userState.userModel?.name ?? '',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            RatingBar(
              ignoreGestures: true,
              initialRating: userState.userModel?.userRating == null
                  ? 0
                  : userState.userModel.userRating,
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
            Text(
              userState.userModel?.address ?? '',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
