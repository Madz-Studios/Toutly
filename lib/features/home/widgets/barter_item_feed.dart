import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/algolia/algolia_barter_model.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:algolia/algolia.dart';
import 'package:flutter/material.dart';

import 'barter_item.dart';

class BarterItemFeed extends StatelessWidget {
  final _otherUserCubit = getIt<OtherUserCubit>();
  final _viewBarterItemBloc = getIt<ViewBarterItemBloc>();
  final AlgoliaQuerySnapshot algoliaQuerySnapshot;
  BarterItemFeed({
    this.algoliaQuerySnapshot,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: algoliaQuerySnapshot.hits
            .map((e) => _itemTitle(e, context))
            .toList(),
      ),
    );
  }

  Widget _itemTitle(AlgoliaObjectSnapshot snap, BuildContext context) {
    final algoliaBarterModel = AlgoliaBarterModel.fromJson(snap.data);

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        // Touch and fold the keyboard
        FocusScope.of(context).requestFocus(FocusNode());
        _gotoViewBarterItem(
          context,
          algoliaBarterModel,
        );
      },
      child: BarterItem(
        algoliaBarter: algoliaBarterModel,
      ),
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
        fullscreenDialog: true,
      ),
    );
  }
}
