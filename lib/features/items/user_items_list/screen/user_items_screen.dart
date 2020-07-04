import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/items/user_items_list/bloc/user_items_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class UserItemsScreen extends StatefulWidget {
  @override
  _UserItemsScreenState createState() => _UserItemsScreenState();
}

class _UserItemsScreenState extends State<UserItemsScreen> {
  final _userItemsBloc = getIt<UserItemsBloc>()
    ..add(UserItemsEvent.loadUserBarterItems());

  List<BarterModel> data = [];

  _loadMore(UserItemsState state) {
    _userItemsBloc.add(UserItemsEvent.loadUserBarterItems());
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      body: BlocConsumer<UserItemsBloc, UserItemsState>(
        listener: (context, state) {
          if (state.isSuccess) {
            print('${state.userBarterItems.length}');
            print('success');
            data.addAll(state.userBarterItems);
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
                childAspectRatio: Platform.isAndroid ? 3 / 2.5 : 1,
              ),
              itemBuilder: (context, position) {
                return Column(
                  children: [
                    DemoItem(data[position]),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DemoItem extends StatelessWidget {
  final BarterModel data;
  DemoItem(this.data);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            width: appSizeConfig.blockSizeHorizontal * 10,
            height: appSizeConfig.blockSizeVertical * 15,
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: data.photosUrl[0],
              imageBuilder: (context, imageProvider) => Container(
                width: double.infinity,
                height: double.infinity,
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
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: appSizeConfig.blockSizeHorizontal * 2.0,
            ),
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
