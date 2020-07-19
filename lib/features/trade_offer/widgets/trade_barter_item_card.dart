import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';

class TradeBarterItemCard extends StatelessWidget {
  final BarterModel barterModel;
  TradeBarterItemCard(this.barterModel);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: CustomListItem(
        thumbnail: barterModel.photosUrl[0],
        title: barterModel.title,
        description: barterModel.description,
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    this.thumbnail,
    this.title,
    this.description,
  });

  final String thumbnail;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5.0),
              height: appSizeConfig.blockSizeVertical * 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8.0,
                  ),
                ),
                image: DecorationImage(
                  image: NetworkImage(thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: _BarterItemDescription(
              title: title,
              description: description,
            ),
          ),
        ],
      ),
    );
  }
}

class _BarterItemDescription extends StatelessWidget {
  const _BarterItemDescription({
    Key key,
    this.title,
    this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: appSizeConfig.blockSizeVertical * 1,
          ),
          Text(
            description,
            style: TextStyle(fontSize: 12.0),
          ),
          SizedBox(
            height: appSizeConfig.blockSizeVertical * 1,
          )
        ],
      ),
    );
  }
}
