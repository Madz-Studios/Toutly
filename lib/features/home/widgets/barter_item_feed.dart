part of '../screen/home_screen.dart';

class _BarterItemFeed extends StatelessWidget {
  _BarterItemFeed({
    this.algoliaQuerySnapshot,
    this.listBarterModels,
  });

  final List<BarterModel> listBarterModels;
  final AlgoliaQuerySnapshot algoliaQuerySnapshot;

  final SearchConfigCubit _searchConfigCubit = getIt<SearchConfigCubit>();

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onLoading() async {
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return _buildContent(context, null);
  }

  Widget _buildContent(
      BuildContext context, AsyncSnapshot<List<DocumentSnapshot>> snapshot) {
    return Container(
      child: SmartRefresher(
        controller: _refreshController,
        onLoading: _onLoading,
        onRefresh: () {
          SearchUtil().searchSubmit(
            searchText: _searchConfigCubit.state.searchText,
            category: _searchConfigCubit.state.category,
            postedWithin: _searchConfigCubit.state.postedWithin,
            range: _searchConfigCubit.state.range,
            isNoLimitRange: _searchConfigCubit.state.isNoLimitRange,
          );
          _refreshController.refreshCompleted();
        },
        child: ListView(
          children: _itemTitle(context, snapshot),
        ),
      ),
    );
  }

  List<Widget> _itemTitle(BuildContext context,
      AsyncSnapshot<List<DocumentSnapshot>> asyncSnapshot) {
    List<Widget> items = [];
    items.add(
      _LocationReminder(),
    );

    List<dynamic> listItems;

    ///convert algoliaQuerySnapshot to a list of barter item model
    if (algoliaQuerySnapshot != null) {
      listItems = algoliaQuerySnapshot.hits;
    } else {
      listItems = listBarterModels;
    }
    for (final item in listItems) {
      BarterModel barterModel;
      if (algoliaQuerySnapshot != null) {
        final AlgoliaBarterModel algoliaBarterModel =
            AlgoliaBarterModel.fromJson(item.data);

        final algoliaJson = algoliaBarterModel.toJson();

        barterModel = BarterModel.fromJson(algoliaJson);
      } else if (asyncSnapshot != null) {
      } else {
        barterModel = item;
      }

      items.add(
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            // Touch and fold the keyboard
            FocusScope.of(context).requestFocus(FocusNode());
            _gotoViewBarterItem(
              context,
              barterModel,
            );
          },
          child: _BarterItem(
            barterModel: barterModel,
          ),
        ),
      );
    }

    return items;
  }

  _gotoViewBarterItem(BuildContext context, BarterModel barterModel) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ViewBarterItemScreen(
          barterModel: barterModel,
          isDialog: false,
        ),
        fullscreenDialog: true,
      ),
    );
  }
}

class _LocationReminder extends StatelessWidget {
  final _authCubit = getIt<AuthCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrivacyServicesCubit, PrivacyServicesState>(
      builder: (_, privacyServicesState) {
        if (!privacyServicesState.isLocationServiceEnabled) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ActionButton(
              title:
                  'To better serve you. Please enabled location service and re-login.',
              color: Colors.blueAccent,
              fontSize: 11,
              onPressed: () {
                debugPrint('Enabled location service');
                AppSettings.openLocationSettings();
                _authCubit.signedOut();
              },
            ),
          );
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}
