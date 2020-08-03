import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserBarterItem extends StatelessWidget {
  final BarterModel barterModel;
  UserBarterItem(
    this.barterModel,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: Stack(
              children: [
                CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: barterModel.photosUrl[0],
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => Container(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    barterModel.publicAccess ? Icons.public : Icons.lock,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Text(
                "${barterModel.title}",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
