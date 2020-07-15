import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/algolia/algolia_barter_model.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/home/bloc/home_bloc.dart';
import 'package:Toutly/features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:algolia/algolia.dart';
import 'package:flutter/material.dart';

import 'barter_item.dart';

class BarterItemFeed extends StatelessWidget {
  final _homeBloc = getIt<HomeBloc>();
  final _viewBarterItemBloc = getIt<ViewBarterItemBloc>();
  final AlgoliaQuerySnapshot algoliaQuerySnapshot;
  BarterItemFeed({
    this.algoliaQuerySnapshot,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: algoliaQuerySnapshot.hits.map((e) => _itemTitle(e)).toList(),
      ),
    );
  }

  Widget _itemTitle(AlgoliaObjectSnapshot snap) {
    final algoliaBarterModel = AlgoliaBarterModel.fromJson(snap.data);

    return FutureBuilder(
      future: _homeBloc.getUser(algoliaBarterModel.userId),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Container();
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
          final user = snapshot.data;
          return GestureDetector(
            onTap: () {
              _gotoViewBarterItem(context, algoliaBarterModel);
            },
            child: BarterItem(
              algoliaBarter: algoliaBarterModel,
              user: user,
            ),
          );
        }
      },
    );
  }

  _gotoViewBarterItem(
      BuildContext context, AlgoliaBarterModel algoliaBarterModel) {
    final barter = BarterModel.fromJson(algoliaBarterModel.toJson());
    _viewBarterItemBloc.add(
      ViewBarterItemEvent.viewBarterItem(barter),
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ViewBarterItemScreen(
          isDialog: false,
        ),
      ),
    );
  }
}
