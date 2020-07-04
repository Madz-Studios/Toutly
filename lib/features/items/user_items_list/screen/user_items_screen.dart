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
    final double itemHeight = appSizeConfig.blockSizeVertical * 15;
    final double itemWidth = appSizeConfig.blockSizeHorizontal * 10;
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
              ),
              itemBuilder: (context, position) {
                return Column(
                  children: [
                    DemoItem(data[position], itemHeight, itemWidth),
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
  final double itemHeight;
  final double itemWidth;
  DemoItem(this.data, this.itemHeight, this.itemWidth);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: data.photosUrl[0],
            imageBuilder: (context, imageProvider) => Container(
              height: itemHeight,
              width: itemWidth,
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
