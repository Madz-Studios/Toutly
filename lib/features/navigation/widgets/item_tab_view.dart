import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navigation_bar.dart';

class ItemTabView extends StatelessWidget {
  const ItemTabView({
    Key key,
    @required this.screens,
    @required this.currentIndex,
  }) : super(key: key);

  final List<Widget> screens;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(appSizeConfig.blockSizeVertical * 12),
            child: AppBar(
              title: Text(
                'Items',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              centerTitle: true,
              backgroundColor: kPrimaryColor,
              bottom: ColoredTabBar(
                Colors.white,
                TabBar(
                  labelStyle: GoogleFonts.roboto(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                  labelColor: kPrimaryColor,
                  unselectedLabelColor: Color(0XFF949494),
                  unselectedLabelStyle: GoogleFonts.roboto(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                  tabs: [
                    Container(
                      child: Center(
                        child: Text('Your list'),
                      ),
                      height: appSizeConfig.blockSizeVertical * 6,
                    ),
                    Container(
                      child: Center(
                        child: Text('Favourites'),
                      ),
                      height: appSizeConfig.blockSizeVertical * 6,
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: screens,
          ),
          bottomNavigationBar: NavigationBar(currentIndex),
        ),
      ),
    );
  }
}

class ColoredTabBar extends Container implements PreferredSizeWidget {
  ColoredTabBar(this.color, this.tabBar);

  final Color color;
  final TabBar tabBar;

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) => Container(
        color: color,
        child: tabBar,
      );
}
