import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
import 'package:Toutly/shared/bloc/search/search_bloc.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:flutter/material.dart';

class SearchFilterScreen extends StatefulWidget {
  final String searchText;
  final UserState userState;
  final RemoteConfigDataState remoteConfigState;
  SearchFilterScreen({
    @required this.searchText,
    @required this.userState,
    @required this.remoteConfigState,
  });

  @override
  _SearchFilterScreenState createState() => _SearchFilterScreenState();
}

class _SearchFilterScreenState extends State<SearchFilterScreen> {
  final _searchBloc = getIt<SearchBloc>();

  String _selectedCategory;

  String _defaultCategoryValue = 'All Categories';
  String _defaultPostedWithinValue;

  List<bool> _defaultToggleValues = [
    true,
    false,
    false,
    false,
  ];
  List<bool> isSelectedToggle = [];

  @override
  void initState() {
    super.initState();

    isSelectedToggle.addAll(_defaultToggleValues);
    _selectedCategory = _defaultCategoryValue;

    _defaultPostedWithinValue = AppConstants.filterByTimeList[0];
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
          buttonColor: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: appSizeConfig.safeBlockVertical * 5,
              right: appSizeConfig.safeBlockHorizontal * 5,
              left: appSizeConfig.safeBlockHorizontal * 5,
            ),
            child: _buildDropdownButtonFormField(),
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
              top: appSizeConfig.safeBlockVertical * 2.5,
              right: appSizeConfig.safeBlockHorizontal * 5,
              left: appSizeConfig.safeBlockHorizontal * 5,
            ),
            child: _buildPostedWithinButtons(),
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
                  widget.searchText,
                  widget.userState,
                  widget.remoteConfigState,
                );
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView _buildPostedWithinButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ToggleButtons(
        isSelected: isSelectedToggle,
        color: Color(0XFFF1F1F1),
        selectedColor: Colors.white,
        fillColor: Color(0XFF949494),
        borderRadius: BorderRadius.all(Radius.circular(
          8,
        )),
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              _defaultPostedWithinValue,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              AppConstants.filterByTimeList[1],
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              AppConstants.filterByTimeList[2],
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              AppConstants.filterByTimeList[3],
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
        onPressed: (index) {
          setState(() {
            for (int i = 0; i < isSelectedToggle.length; i++) {
              isSelectedToggle[i] = i == index;
            }
          });
        },
      ),
    );
  }

  DropdownButtonFormField<String> _buildDropdownButtonFormField() {
    return DropdownButtonFormField(
      isExpanded: true,
      value: _selectedCategory,
      items: _generateDropdownMenuCategoryItems(),
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

  _onChangeCategoryDropdownItem(String selectedCategory) {
    setState(() {
      _selectedCategory = selectedCategory;
    });
  }

  List<DropdownMenuItem<String>> _generateDropdownMenuCategoryItems() {
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

  void _reset() {
    print('reset');
    setState(() {
      _selectedCategory = _defaultCategoryValue;
      isSelectedToggle.clear();
      isSelectedToggle.addAll(_defaultToggleValues);
    });
  }

  void applyFilter(String searchText, UserState userState,
      RemoteConfigDataState remoteConfigState) {
    _searchBloc.add(
      SearchEvent.search(
          algoliaAppId: remoteConfigState.algoliaAppId,
          algoliaSearchApiKey: remoteConfigState.algoliaSearchApiKey,
          latitude: userState.userModel.geoLocation.latitude.toString(),
          longitude: userState.userModel.geoLocation.longitude.toString(),
          searchText: searchText,
          category: ''),
    );

    print('Apply filter.');
  }
}
