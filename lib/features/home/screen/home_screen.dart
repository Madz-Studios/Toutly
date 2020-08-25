import 'package:Toutly/core/cubits/search/search_cubit.dart';
import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/algolia/algolia_barter_model.dart';
import 'package:Toutly/core/models/barter/barter_model.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/search_filter/screen/search_filter_screen.dart';
import 'package:Toutly/features/view_barter_item/screen/view_barter_item_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:Toutly/shared/util/search_util.dart';
import 'package:Toutly/shared/widgets/profile_with_rating.dart';
import 'package:Toutly/shared/widgets/saved_panel.dart';
import 'package:algolia/algolia.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appSizeConfig.blockSizeVertical * 5.5),
        child: AppBar(
          backgroundColor: kPrimaryColor,
          automaticallyImplyLeading: false, // Don't show the leading button
          titleSpacing: 0,
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: appSizeConfig.safeBlockHorizontal * 5,
            ),
            child: BlocBuilder<SearchConfigCubit, SearchConfigState>(
              builder: (_, searchConfigState) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: _SearchTextField(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: appSizeConfig.safeBlockHorizontal * 2.5,
                      ),
                      child: GestureDetector(
                        child: SvgPicture.asset(
                          'assets/images/filter.svg',
                          height: appSizeConfig.blockSizeVertical * 3,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchFilterScreen(
                                searchText: searchConfigState.searchText,
                                category: searchConfigState.category,
                                postedWithin: searchConfigState.postedWithin,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          // Touch and fold the keyboard
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: BlocBuilder<SearchCubit, SearchState>(
          builder: (_, searchState) {
            if (searchState.isSuccess) {
              AlgoliaQuerySnapshot algoliaQuerySnapshot =
                  searchState.algoliaQuerySnapshot;

              if (algoliaQuerySnapshot.empty) {
                return Center(
                  child: Text(
                    'There is no items being bartered in your area.',
                  ),
                );
              } else {
                return _BarterItemFeed(
                  algoliaQuerySnapshot: algoliaQuerySnapshot,
                );
              }
            } else {
              return LoadingOrErrorWidgetUtil(searchState.info);
            }
          },
        ),
      ),
    );
  }
}

class _BarterItemFeed extends StatefulWidget {
  final AlgoliaQuerySnapshot algoliaQuerySnapshot;
  _BarterItemFeed({
    this.algoliaQuerySnapshot,
  });

  @override
  __BarterItemFeedState createState() => __BarterItemFeedState();
}

class __BarterItemFeedState extends State<_BarterItemFeed> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onLoading() async {
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchConfigCubit, SearchConfigState>(
      builder: (_, searchConfigState) {
        return SmartRefresher(
          controller: _refreshController,
          onRefresh: () {
            SearchUtil().searchSubmit(
              searchText: searchConfigState.searchText,
              category: searchConfigState.category,
              postedWithin: searchConfigState.postedWithin,
              algoliaSearchApiKey: searchConfigState.algoliaSearchApiKey,
              algoliaAppId: searchConfigState.algoliaAppId,
              latitude: searchConfigState.latitude,
              longitude: searchConfigState.longitude,
            );
            _refreshController.refreshCompleted();
          },
          onLoading: _onLoading,
          child: ListView(
            children: widget.algoliaQuerySnapshot.hits
                .map((e) => _itemTitle(e, context))
                .toList(),
          ),
        );
      },
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
      child: _BarterItem(
        algoliaBarter: algoliaBarterModel,
      ),
    );
  }

  _gotoViewBarterItem(
      BuildContext context, AlgoliaBarterModel algoliaBarterModel) {
    final barterModel = BarterModel.fromJson(algoliaBarterModel.toJson());

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

class _BarterItem extends StatelessWidget {
  final _otherUserCubit = getIt<OtherUserCubit>();
  _BarterItem({
    @required this.algoliaBarter,
  });

  final AlgoliaBarterModel algoliaBarter;

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (_, currentUserState) {
        final currentUser = currentUserState.currentUserModel;
        final bool isCurrentUser = currentUser.userId == algoliaBarter.userId;
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: appSizeConfig.blockSizeVertical * 1,
          ),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: appSizeConfig.blockSizeHorizontal * 3,
                    top: appSizeConfig.blockSizeVertical * 1,
                  ),
                  child: isCurrentUser
                      ? ProfileWithRating(currentUser)
                      : FutureBuilder(
                          future: _otherUserCubit
                              .getOtherUser(algoliaBarter.userId),
                          builder: (BuildContext context,
                              AsyncSnapshot<UserModel> snapshot) {
                            switch (snapshot.connectionState) {
                              case ConnectionState.done:
                                if (snapshot.hasError) {
                                  debugPrint("Snapshot " + snapshot.toString());
                                  return LoadingOrErrorWidgetUtil(
                                      'Error: ${snapshot.error}');
                                } else {
                                  UserModel otherUserModel = snapshot.data;
                                  return ProfileWithRating(otherUserModel);
                                }
                                break;
                              default:
                                debugPrint("Snapshot " + snapshot.toString());
                                return Container();
                            }
                          },
                        ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: appSizeConfig.blockSizeHorizontal * 2,
                    vertical: appSizeConfig.blockSizeVertical * 1,
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: appSizeConfig.blockSizeVertical * 22.5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                algoliaBarter.photosUrl[0],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      if (!isCurrentUser)
                        Align(
                          alignment: Alignment.topRight,
                          child: SavedPanel(
                            itemId: algoliaBarter.itemId,
                          ),
                        )
                      else
                        Container(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: appSizeConfig.blockSizeHorizontal * 2,
                    vertical: appSizeConfig.blockSizeVertical * 1,
                  ),
                  child: _BarterItemDescription(algoliaBarter),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class _BarterItemDescription extends StatelessWidget {
  final AlgoliaBarterModel algoliaBarterModel;

  _BarterItemDescription(this.algoliaBarterModel);

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${algoliaBarterModel.title}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: appSizeConfig.blockSizeVertical * 1.5,
        ),
        Text(
          '${algoliaBarterModel.description}',
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 12,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class _SearchTextField extends StatefulWidget {
  @override
  __SearchTextFieldState createState() => __SearchTextFieldState();
}

class __SearchTextFieldState extends State<_SearchTextField> {
  final _searchController = TextEditingController();
  final _searchConfigCubit = getIt<SearchConfigCubit>();

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchConfigCubit, SearchConfigState>(
      builder: (_, searchConfigState) {
        _searchController.text = searchConfigState.searchText;
        return TextField(
          controller: _searchController,
          textInputAction: TextInputAction.search,
          onSubmitted: (searchText) {
            SearchUtil().searchSubmit(
              searchText: searchText,
              category: searchConfigState.category,
              postedWithin: searchConfigState.postedWithin,
              latitude: searchConfigState.latitude,
              longitude: searchConfigState.longitude,
              algoliaSearchApiKey: searchConfigState.algoliaSearchApiKey,
              algoliaAppId: searchConfigState.algoliaAppId,
            );

            _searchConfigCubit.updateSearchText(_searchController.text);
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0XFFF7F7F8),
            hintText: 'Search',
            hintStyle: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              color: Color(0XFFB5B5B5),
            ),
            isDense: true,
            // Added this
            contentPadding: EdgeInsets.all(8),
            // Added this
            suffixIcon: IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.grey,
              ),
              onPressed: () {
                _searchController.clear();
                SearchUtil().searchSubmit(
                  searchText: '',
                  category: searchConfigState.category,
                  postedWithin: searchConfigState.postedWithin,
                  latitude: searchConfigState.latitude,
                  longitude: searchConfigState.longitude,
                  algoliaSearchApiKey: searchConfigState.algoliaSearchApiKey,
                  algoliaAppId: searchConfigState.algoliaAppId,
                );
                _searchConfigCubit.updateSearchText('');
              },
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
        );
      },
    );
  }
}
