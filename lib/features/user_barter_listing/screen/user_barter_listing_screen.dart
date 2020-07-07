import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/user_barter_listing/bloc/user_barter_listing_bloc.dart';
import 'package:Toutly/features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBarterListingScreen extends StatelessWidget {
  final _viewBarterItemBloc = getIt<ViewBarterItemBloc>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<UserBarterListingBloc, UserBarterListingState>(
      builder: (context, state) => state.map(initial: (_) {
        return Container();
      }, loadUserListing: (state) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(
              vertical: appSizeConfig.blockSizeVertical * 1.5,
              horizontal: appSizeConfig.blockSizeHorizontal * 1.5,
            ),
            child: StreamBuilder<QuerySnapshot>(
              stream: state.listings,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  if (Platform.isIOS) {
                    return Center(
                      child: CupertinoActivityIndicator(),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Error: ${snapshot.error}',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  );
                } else {
                  return GridView.builder(
                    itemCount: snapshot.data.documents.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: appSizeConfig.blockSizeHorizontal * 1.5,
                      mainAxisSpacing: appSizeConfig.blockSizeVertical * 1.5,
                    ),
                    itemBuilder: (context, index) {
                      final barterModel = BarterModel.fromJson(
                        snapshot.data.documents[index].data,
                      );
                      return GestureDetector(
                        onTap: () {
                          _viewBarterItemBloc.add(
                            ViewBarterItemEvent.viewBarterItem(barterModel),
                          );

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewBarterItemScreen(),
                              fullscreenDialog: true,
                            ),
                          );
                        },
                        child: GridTile(
                          child: UserBarterItem(barterModel),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        );
      }),
    );
  }
}

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
            child: CachedNetworkImage(
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
