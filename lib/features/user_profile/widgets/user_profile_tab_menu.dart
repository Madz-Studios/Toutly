import 'package:Toutly/core/cubits/barter_item/current_user/list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/user_barter_listing/screen/user_barter_listing_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfileTabMenu extends StatefulWidget {
  @override
  _UserProfileTabMenuState createState() => _UserProfileTabMenuState();
}

class _UserProfileTabMenuState extends State<UserProfileTabMenu> {
  final _barterItemCurrentUserCubit = getIt<ListBarterModelCurrentUserCubit>();

  @override
  void initState() {
    super.initState();
    _barterItemCurrentUserCubit.getCurrentUserBarterItems();
  }

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
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  UserBarterListingScreen(),
                  Placeholder(
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
