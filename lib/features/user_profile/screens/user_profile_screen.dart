import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/edit_profile/screen/edit_profile_screen.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final _userBloc = getIt<UserBloc>();
  @override
  void initState() {
    super.initState();
    _userBloc.add(
      UserEvent.getCurrentLoggedInUser(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.edit,
                  color: kPrimaryColor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileScreen(
                        userModel: state.userModel,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: UserInfo(state),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

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
            vertical: appSizeConfig.safeBlockVertical * 3,
            horizontal: appSizeConfig.safeBlockHorizontal * 3,
          ),
          child: CircleAvatar(
            backgroundImage: userState.userModel?.photoUrl == null ||
                    userState.userModel.photoUrl.isEmpty
                ? AssetImage('assets/images/profile_placeholder.png')
                : NetworkImage(userState.userModel?.photoUrl),
            radius: appSizeConfig.safeBlockVertical * 3,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(userState.userModel?.name ?? ''),
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
            Text(userState.userModel?.address ?? ''),
          ],
        ),
      ],
    );
  }
}
