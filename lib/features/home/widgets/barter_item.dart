import 'package:Toutly/core/models/algolia/algolia_barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/widgets/profile_with_rating.dart';
import 'barter_item_description.dart';
import 'likes_panel.dart';

class BarterItem extends StatelessWidget {
  BarterItem({
    @required this.algoliaBarter,
    @required this.barterUser,
  });

  final AlgoliaBarterModel algoliaBarter;
  final UserModel barterUser;

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
                user: barterUser,
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 2.5,
            ),
            Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: algoliaBarter.photosUrl[0],
                  placeholder: (context, url) => Container(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                BlocBuilder<UserBloc, UserState>(
                  builder: (_, userState) {
                    final currentUser = userState.userModel;
                    if (currentUser != null) {
                      if (currentUser.userId != barterUser.userId) {
                        return Align(
                          alignment: Alignment.topRight,
                          child: LikesPanel(
                            barterUser: barterUser,
                            currentUser: currentUser,
                            itemId: algoliaBarter.itemId,
                          ),
                        );
                      } else {
                        return Container();
                      }
                    }
                    return Container();
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: appSizeConfig.blockSizeHorizontal * 2.5,
                right: appSizeConfig.blockSizeHorizontal * 2.5,
                bottom: appSizeConfig.blockSizeVertical * 2.5,
                top: appSizeConfig.blockSizeVertical * 2.5,
              ),
              child: BarterItemDescription(algoliaBarter),
            )
          ],
        ),
      ),
    );
  }
}
