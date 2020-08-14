import 'package:Toutly/core/cubits/barter_item/barter_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/user_barter_listing/screen/user_barter_listing_screen.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileTabMenu extends StatefulWidget {
  @override
  _UserProfileTabMenuState createState() => _UserProfileTabMenuState();
}

class _UserProfileTabMenuState extends State<UserProfileTabMenu> {
  final _barterCubit = getIt<BarterCubit>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (_, userState) {
        _barterCubit.getUserBarterItems(userState.userModel?.userId ?? '');
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
                      Placeholder(
                        color: Colors.red,
                      ),
                      Placeholder(
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
