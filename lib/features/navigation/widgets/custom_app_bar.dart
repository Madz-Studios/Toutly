import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppSizeConfig appSizeConfig;
  final String title;
  CustomAppBar({
    @required this.appSizeConfig,
    @required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: kPrimaryColor,
      title: Text(
        title,
        style: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(appSizeConfig.blockSizeVertical * 5.5);
}
