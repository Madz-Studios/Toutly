import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';

class UserItemsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.safeBlockHorizontal * 5,
                vertical: appSizeConfig.safeBlockVertical * 2.5,
              ),
              child: Placeholder(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: appSizeConfig.safeBlockHorizontal * 15,
              vertical: appSizeConfig.safeBlockVertical * 2.5,
            ),
            child: RaisedButton(
              color: kPrimaryColor,
              child: Text(
                'Add an Item',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
