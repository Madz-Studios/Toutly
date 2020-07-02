import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';

import 'photos_carousel.dart';
import 'profile_with_rating.dart';

class FeedItem extends StatelessWidget {
  FeedItem({
    @required this.items,
    @required this.name,
  });

  final List<Widget> items;
  final String name;

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: appSizeConfig.blockSizeVertical * 1,
      ),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: appSizeConfig.blockSizeHorizontal * 5,
                top: appSizeConfig.blockSizeVertical * 2.5,
              ),
              child: ProfileWithRating(
                name: name,
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 2.5,
            ),
            PhotosCarousel(items: items),
          ],
        ),
      ),
    );
  }
}
