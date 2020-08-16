import 'dart:io';

import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/home/widgets/barter_item_feed.dart';
import 'package:Toutly/features/search_filter/screen/search_filter_screen.dart';
import 'package:Toutly/shared/bloc/search/search_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/util/search_util.dart';
import 'package:algolia/algolia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (_, searchState) => searchState.map(
            empty: (e) {
              return Container();
            },
            loading: (e) {
              if (Platform.isIOS) {
                return Center(
                  child: CupertinoActivityIndicator(),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
            loaded: (e) {
              AlgoliaQuerySnapshot algoliaQuerySnapshot = e.data;

              if (algoliaQuerySnapshot.empty) {
                return Center(
                  child: Text(
                    'There is no items being bartered in your area.',
                  ),
                );
              } else {
                return BarterItemFeed(
                  algoliaQuerySnapshot: algoliaQuerySnapshot,
                );
              }
            },
            failure: (e) {
              debugPrint(e.toString());
              return Center(
                child: Text(
                  'Error: ${e.info}',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              );
            },
          ),
        ),
      ),
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
