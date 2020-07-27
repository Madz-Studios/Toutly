import 'package:Toutly/features/user_barter_listing/screen/user_barter_listing_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfileTabMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                    text: 'Bartering',
                  ),
                  Tab(
                    text: 'Done',
                  ),
                  Tab(
                    text: 'Reviews',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  UserBarterListingScreen(),
                  Container(
                    color: Colors.yellow,
                  ),
                  Container(
                    color: Colors.yellow,
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
