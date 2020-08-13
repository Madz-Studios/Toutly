import 'package:Toutly/features/messages/tabs/barters_tab.dart';
import 'package:Toutly/features/messages/tabs/offers_tabs.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
                  text: 'Barters',
                ),
                Tab(
                  text: 'Offers',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                BartersTab(),
                OffersTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
