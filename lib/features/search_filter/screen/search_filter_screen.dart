import 'dart:io';

import 'package:Toutly/core/cubits/search/search_cubit.dart';
import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFilterScreen extends StatefulWidget {
  final String searchText;
  final String category;
  final String postedWithin;
  final double range;
  final bool isNoLimitRange;

  SearchFilterScreen({
    @required this.searchText,
    @required this.category,
    @required this.postedWithin,
    @required this.range,
    @required this.isNoLimitRange,
  });

  @override
  _SearchFilterScreenState createState() => _SearchFilterScreenState();
}

class _SearchFilterScreenState extends State<SearchFilterScreen> {
  final _searchCubit = getIt<SearchCubit>();
  final _searchConfigCubit = getIt<SearchConfigCubit>();

  String _defaultCategoryValue;
  String _defaultPostedWithinValue;

  String _selectedCategory;
  String _selectedPostedWithin;

  double _currentSliderValue;

  bool _isNoLimitRange;

  @override
  void initState() {
    super.initState();
    _isNoLimitRange = widget.isNoLimitRange;
    _defaultCategoryValue = 'All Categories';
    _defaultPostedWithinValue = AppConstants.filterByTimeList[0];

    _currentSliderValue = widget.range;

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

  void _applyFilter() {
    _searchConfigCubit.setConfig(
      searchText: widget.searchText,
      category:
          _selectedCategory == _defaultCategoryValue ? '' : _selectedCategory,
      postedWithin: _selectedPostedWithin == _defaultPostedWithinValue
          ? ''
          : _selectedPostedWithin,
      range: _currentSliderValue,
      isNoLimitRange: _isNoLimitRange,
    );
    _searchCubit.search(
      searchText: widget.searchText,
      category:
          _selectedCategory == _defaultCategoryValue ? '' : _selectedCategory,
      postedWithin: _selectedPostedWithin == _defaultPostedWithinValue
          ? ''
          : _selectedPostedWithin,
      range: _currentSliderValue,
      isNoLimitRange: _isNoLimitRange,
    );
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
                    style: TextStyle(
                      color: kSecondaryRedAccentColor,
                    ),
                  ),
                  onTap: () {
                    debugPrint('Reset');
                    setState(() {
                      _selectedCategory = _defaultCategoryValue;
                      _selectedPostedWithin = _defaultPostedWithinValue;
                      _currentSliderValue = widget.range;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
      body: BlocBuilder<SearchConfigCubit, SearchConfigState>(
        builder: (_, searchConfigState) {
          String stateCategory = searchConfigState.category;
          String statePostedWithin = searchConfigState.postedWithin;
          return SingleChildScrollView(
            child: Column(
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
                    top: appSizeConfig.safeBlockVertical * 5,
                    right: appSizeConfig.safeBlockHorizontal * 5,
                    left: appSizeConfig.safeBlockHorizontal * 5,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Show all items',
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Checkbox(
                        value: _isNoLimitRange,
                        onChanged: (bool value) {
                          setState(() {
                            _isNoLimitRange = !_isNoLimitRange;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: _isNoLimitRange == true ? false : true,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: appSizeConfig.safeBlockVertical * 5,
                      right: appSizeConfig.safeBlockHorizontal * 5,
                      left: appSizeConfig.safeBlockHorizontal * 5,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Distance',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: _isNoLimitRange == true ? false : true,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: appSizeConfig.safeBlockVertical * 1.5,
                      right: appSizeConfig.safeBlockHorizontal * 5,
                      left: appSizeConfig.safeBlockHorizontal * 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                            child: Text(
                          '${_currentSliderValue.toInt()} km',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        _buildSlider(context),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: appSizeConfig.safeBlockVertical * 10,
                    right: appSizeConfig.safeBlockHorizontal * 5,
                    left: appSizeConfig.safeBlockHorizontal * 5,
                  ),
                  child: ActionButton(
                    title: 'Apply',
                    onPressed: () {
                      _applyFilter();
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
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

  Widget _buildSlider(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoSlider(
        value: _currentSliderValue.toDouble(),
        min: 1,
        max: 1000.0,
        divisions: 1000,
        onChanged: (double newValue) {
          setState(() {
            _currentSliderValue = newValue;
          });
        },
      );
    } else {
      return Slider(
        value: _currentSliderValue,
        min: 10,
        max: 1000.0,
        divisions: 1000,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      );
    }
  }
}
