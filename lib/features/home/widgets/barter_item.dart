import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/algolia/algolia_barter_model.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/widgets/profile_with_rating.dart';
import 'barter_item_description.dart';
import 'likes_panel.dart';

class BarterItem extends StatelessWidget {
  final _otherUserCubit = getIt<OtherUserCubit>();
  BarterItem({
    @required this.algoliaBarter,
  });

  final AlgoliaBarterModel algoliaBarter;

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
              child: BlocBuilder<CurrentUserCubit, CurrentUserState>(
                builder: (_, currentUserState) {
                  final currentUser = currentUserState.currentUserModel;
                  if (currentUser.userId == algoliaBarter.userId) {
                    return ProfileWithRating(currentUser);
                  } else {
                    _otherUserCubit.getOtherUser(algoliaBarter.userId);
                    return BlocBuilder<OtherUserCubit, OtherUserState>(
                      builder: (_, otherUserState) {
                        if (otherUserState.isSuccess) {
                          return ProfileWithRating(
                              otherUserState.otherUserModel);
                        } else {
                          return ProfileWithRating(null);
                        }
                      },
                    );
                  }
                },
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
                Align(
                  alignment: Alignment.topRight,
                  child: LikesPanel(
                    itemId: algoliaBarter.itemId,
                  ),
                )
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
