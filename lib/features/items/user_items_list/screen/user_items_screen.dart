import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/items/user_items_list/bloc/user_items_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserItemsScreen extends StatefulWidget {
  @override
  _UserItemsScreenState createState() => _UserItemsScreenState();
}

class _UserItemsScreenState extends State<UserItemsScreen> {
  final _userItemBloc = getIt<UserItemsBloc>();
  @override
  void initState() {
    super.initState();

    _userItemBloc.add(UserItemsEvent.loadUserBarterItems(0));
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: _userItemBloc.getAllQueryMessages(),
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
              itemBuilder: (context, position) {
                final barterModel = BarterModel.fromJson(
                    snapshot.data.documents[position].data);
                return UserBarterItem(barterModel);
              },
            );
          }
        },
      ),
    );
  }
}

class UserBarterItem extends StatelessWidget {
  final BarterModel data;
  UserBarterItem(
    this.data,
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
              imageUrl: data.photosUrl[0],
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => Placeholder(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Text(
                "${data.title}",
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
