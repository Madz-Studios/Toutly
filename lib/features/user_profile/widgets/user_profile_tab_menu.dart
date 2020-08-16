import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/features/user_barter_listing/screen/private_user_barter_items_screen.dart';
import 'package:Toutly/features/user_barter_listing/screen/public_user_barter_items_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileTabMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SizedBox(
        height: 100.0,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0XFFDDDDDD),
                  ),
                  bottom: BorderSide(
                    color: Color(0XFFDDDDDD),
                  ),
                ),
              ),
              child: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Color(0XFF666666),
                indicatorColor: kPrimaryColor,
                tabs: [
                  Tab(
                    text: 'Public',
                  ),
                  Tab(
                    text: 'Private',
                  ),
                ],
              ),
            ),
            Expanded(child: BlocBuilder<CurrentUserCubit, CurrentUserState>(
              builder: (_, currentUserState) {
                if (currentUserState.isSuccess) {
                  final currentUser = currentUserState.currentUserModel;
                  return TabBarView(
                    children: <Widget>[
                      PublicUserBarterItemsScreen(currentUser.userId),
                      PrivateUserBarterItemsScreen(currentUser.userId),
                    ],
                  );
                } else {
                  return LoadingOrErrorWidgetUtil(currentUserState.info);
                }
              },
            )),
          ],
        ),
      ),
    );
  }
}
