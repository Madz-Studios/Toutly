import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/edit_profile/screen/edit_profile_screen.dart';
import 'package:Toutly/features/user_profile/widgets/user_info.dart';
import 'package:Toutly/features/user_profile/widgets/user_profile_tab_menu.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    final appSizeConfig = AppSizeConfig(context);
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
                child: UserInfo(state),
              ),
//              SizedBox(
//                height: appSizeConfig.safeBlockVertical * 3,
//              ),
//              Padding(
//                padding: EdgeInsets.symmetric(
//                  horizontal: appSizeConfig.safeBlockHorizontal * 3,
//                ),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceAround,
//                  children: <Widget>[
//                    UserPosts(),
//                    UserFollowers(),
//                    UserFollowing(),
//                  ],
//                ),
//              ),
              SizedBox(
                height: appSizeConfig.safeBlockVertical * 3,
              ),
              Expanded(
                child: UserProfileTabMenu(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class UserFollowing extends StatelessWidget {
  const UserFollowing({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '1',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        Text(
          'Following',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}

class UserFollowers extends StatelessWidget {
  const UserFollowers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '1',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        Text(
          'Followers',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}

class UserPosts extends StatelessWidget {
  const UserPosts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '1',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        Text(
          'Post',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
