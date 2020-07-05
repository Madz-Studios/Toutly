import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/items/user_items_list/bloc/user_items_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class UserItemsScreen extends StatefulWidget {
  @override
  _UserItemsScreenState createState() => _UserItemsScreenState();
}

class _UserItemsScreenState extends State<UserItemsScreen> {
  final _userItemsBloc = getIt<UserItemsBloc>()
    ..add(UserItemsEvent.loadUserBarterItems([]));

  List<BarterModel> data = [];

  _loadMore(UserItemsState state) {
    _userItemsBloc
        .add(UserItemsEvent.loadUserBarterItems(state.userBarterItems));
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      body: BlocConsumer<UserItemsBloc, UserItemsState>(
        listener: (context, state) {
          if (state.isSuccess) {
            print(
                'current barter items length = ${state.userBarterItems.length}');
            data.addAll(state.userBarterItems);
            Navigator.of(context).pop();
          }

          if (state.isSubmitting) {
            if (Platform.isIOS) {
              _showCupertinoDialog(context);
            } else {
              _showMaterialDialog(context);
            }
          }
        },
        builder: (context, state) {
          return LazyLoadScrollView(
            isLoading: state.isSubmitting,
            onEndOfPage: () => _loadMore(state),
            child: GridView.builder(
              itemCount: data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: appSizeConfig.blockSizeHorizontal * 1.5,
                mainAxisSpacing: appSizeConfig.blockSizeVertical * 1.5,
              ),
              itemBuilder: (context, position) {
                return UserBarterItem(data[position]);
              },
            ),
          );
        },
      ),
    );
  }

  _showMaterialDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: CircularProgressIndicator(),
      ),
    );
  }

  _showCupertinoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
        content: CupertinoActivityIndicator(),
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
              placeholder: (context, url) => CircularProgressIndicator(),
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
