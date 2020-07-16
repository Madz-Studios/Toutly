import 'package:Toutly/core/models/algolia/algolia_barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/profile_with_rating.dart';
import 'barter_item_description.dart';
import 'likes_panel.dart';

class BarterItem extends StatelessWidget {
  BarterItem({
    @required this.algoliaBarter,
    @required this.user,
  });

  final AlgoliaBarterModel algoliaBarter;
  final UserModel user;

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
                user: user,
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 2.5,
            ),
            CachedNetworkImage(
              imageUrl: algoliaBarter.photosUrl[0],
              placeholder: (context, url) => Container(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 2.5,
              ),
              child: LikesPanel(algoliaBarter),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 2.5,
              ),
              child: BarterItemDescription(algoliaBarter),
            )
          ],
        ),
      ),
    );
  }
}
