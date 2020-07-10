import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';

class FeedItemDescription extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'MacBook Pro',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          '''Lorem ipsum is placeholder text commonly used in the graphic, print...''',
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 12,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: appSizeConfig.blockSizeHorizontal * 2.5,
          ),
          child: Row(
            children: <Widget>[
              Spacer(),
              Text(
                'See more',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 12,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
