import 'package:Toutly/core/models/algolia/algolia_barter_model.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';

class FeedItemDescription extends StatelessWidget {
  final AlgoliaBarterModel algoliaBarterModel;

  FeedItemDescription(this.algoliaBarterModel);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${algoliaBarterModel.title}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: appSizeConfig.blockSizeVertical * 1.5,
        ),
        Text(
          '${algoliaBarterModel.description}',
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
