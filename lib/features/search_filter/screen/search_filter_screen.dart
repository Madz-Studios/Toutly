import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
import 'package:Toutly/shared/bloc/search/search_bloc.dart';
import 'package:Toutly/shared/bloc/search_config/search_config_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFilterScreen extends StatefulWidget {
  final String searchText;
  final String category;
  final String postedWithin;

  SearchFilterScreen({
    @required this.searchText,
    @required this.category,
    @required this.postedWithin,
  });

  @override
  _SearchFilterScreenState createState() => _SearchFilterScreenState();
}

class _SearchFilterScreenState extends State<SearchFilterScreen> {
  final _searchBloc = getIt<SearchBloc>();
  final _searchConfig = getIt<SearchConfigBloc>();

  String _defaultCategoryValue;
  String _defaultPostedWithinValue;

  String _selectedCategory;
  String _selectedPostedWithin;

  @override
  void initState() {
    super.initState();
    _defaultCategoryValue = 'All Categories';
    _defaultPostedWithinValue = AppConstants.filterByTimeList[0];

    if (widget.category.isNotEmpty) {
      _selectedCategory = widget.category;
    } else {
      _selectedCategory = _defaultCategoryValue;
    }

    if (widget.postedWithin.isNotEmpty) {
      _selectedPostedWithin = widget.postedWithin;
    } else {
      _selectedPostedWithin = _defaultPostedWithinValue;
    }
  }

  void applyFilter({
    @required double latitude,
    @required double longitude,
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
  }) {
    _searchConfig.add(
      SearchConfigEvent.setConfig(
        searchText: widget.searchText,
        category:
            _selectedCategory == _defaultCategoryValue ? '' : _selectedCategory,
        postedWithin: _selectedPostedWithin == _defaultPostedWithinValue
            ? ''
            : _selectedPostedWithin,
        latitude: latitude,
        longitude: longitude,
      ),
    );
    _searchBloc.add(
      SearchEvent.search(
        searchText: widget.searchText,
        category:
            _selectedCategory == _defaultCategoryValue ? '' : _selectedCategory,
        postedWithin: _selectedPostedWithin == _defaultPostedWithinValue
            ? ''
            : _selectedPostedWithin,
        algoliaAppId: algoliaAppId,
        algoliaSearchApiKey: algoliaSearchApiKey,
        latitude: latitude,
        longitude: longitude,
      ),
    );
  }

  _reset() {
    setState(() {
      _selectedCategory = _defaultCategoryValue;
      _selectedPostedWithin = _defaultPostedWithinValue;
    });
  }

  _onChangeCategoryDropdownItem(String selectedCategory) {
    setState(() {
      _selectedCategory = selectedCategory;
    });
  }

  _onChangePostedWithinDropdownItem(String selectedPostedWithin) {
    setState(() {
      _selectedPostedWithin = selectedPostedWithin;
    });
  }

  List<DropdownMenuItem<String>> _generateDropdownCategoryItems() {
    List<DropdownMenuItem<String>> items = List();

    items.add(
      DropdownMenuItem(
        value: _defaultCategoryValue,
        child: Text(_defaultCategoryValue),
      ),
    );
    for (String category in AppConstants.categoryList) {
      items.add(
        DropdownMenuItem(
          value: category,
          child: Text(category),
        ),
      );
    }
    return items;
  }

  List<DropdownMenuItem<String>> _generateDropdownPostedCategoryItems() {
    List<DropdownMenuItem<String>> items = List();

    for (String postedWithin in AppConstants.filterByTimeList) {
      items.add(
        DropdownMenuItem(
          value: postedWithin,
          child: Text(postedWithin),
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Filters',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: BackOrCloseButton(
          isDialog: false,
          onPressed: () {
            Navigator.pop(context);
          },
          buttonColor: kPrimaryColor,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: appSizeConfig.safeBlockHorizontal * 2.5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    _reset();
                  },
                ),
              ],
            ),
          )
        ],
      ),
      body: BlocBuilder<SearchConfigBloc, SearchConfigState>(
        builder: (_, searchConfigState) {
          String stateCategory = searchConfigState.category;
          String statePostedWithin = searchConfigState.postedWithin;
          double latitude = searchConfigState.latitude;
          double longitude = searchConfigState.longitude;
          return BlocBuilder<RemoteConfigDataBloc, RemoteConfigDataState>(
            builder: (_, remoteConfigState) {
              String algoliaAppId = remoteConfigState.algoliaAppId;
              String algoliaSearchApiKey =
                  remoteConfigState.algoliaSearchApiKey;
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: appSizeConfig.safeBlockVertical * 5,
                      right: appSizeConfig.safeBlockHorizontal * 5,
                      left: appSizeConfig.safeBlockHorizontal * 5,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: appSizeConfig.safeBlockVertical * 1.5,
                      right: appSizeConfig.safeBlockHorizontal * 5,
                      left: appSizeConfig.safeBlockHorizontal * 5,
                    ),
                    child: _buildDropDownCategories(stateCategory),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: appSizeConfig.safeBlockVertical * 5,
                      right: appSizeConfig.safeBlockHorizontal * 5,
                      left: appSizeConfig.safeBlockHorizontal * 5,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Posted within',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: appSizeConfig.safeBlockVertical * 1.5,
                      right: appSizeConfig.safeBlockHorizontal * 5,
                      left: appSizeConfig.safeBlockHorizontal * 5,
                    ),
                    child: _buildDropDownPostedWithin(statePostedWithin),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: appSizeConfig.safeBlockVertical * 10,
                      right: appSizeConfig.safeBlockHorizontal * 20,
                      left: appSizeConfig.safeBlockHorizontal * 20,
                    ),
                    child: ActionButton(
                      title: 'Apply',
                      onPressed: () {
                        applyFilter(
                          latitude: latitude,
                          longitude: longitude,
                          algoliaAppId: algoliaAppId,
                          algoliaSearchApiKey: algoliaSearchApiKey,
                        );
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  DropdownButtonFormField<String> _buildDropDownCategories(
      String stateCategory) {
    return DropdownButtonFormField(
      isExpanded: true,
      value: _selectedCategory,
      items: _generateDropdownCategoryItems(),
      onChanged: _onChangeCategoryDropdownItem,
      style: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: Colors.black87,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0XFFF7F7F8),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
    );
  }

  DropdownButtonFormField<String> _buildDropDownPostedWithin(
      String statePostedWithin) {
    return DropdownButtonFormField(
      isExpanded: true,
      value: _selectedPostedWithin,
      items: _generateDropdownPostedCategoryItems(),
      onChanged: _onChangePostedWithinDropdownItem,
      style: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: Colors.black87,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0XFFF7F7F8),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
