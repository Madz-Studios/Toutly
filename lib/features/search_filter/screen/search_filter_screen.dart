import 'dart:io';

import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/remote_config/remote_config_cubit.dart';
import 'package:Toutly/core/cubits/search/search_cubit.dart';
import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/signup/screen/modal_signup_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:Toutly/shared/widgets/text_fields/sign_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SearchFilterScreen extends StatefulWidget {
  final String searchText;
  final String category;
  final String postedWithin;
  final String address;
  final double range;

  SearchFilterScreen({
    @required this.searchText,
    @required this.category,
    @required this.postedWithin,
    @required this.address,
    @required this.range,
  });

  @override
  _SearchFilterScreenState createState() => _SearchFilterScreenState();
}

class _SearchFilterScreenState extends State<SearchFilterScreen> {
  final _searchCubit = getIt<SearchCubit>();
  final _searchConfigCubit = getIt<SearchConfigCubit>();
  final _locationCubit = getIt<LocationCubit>();

  final _addressController = TextEditingController();

  String _defaultCategoryValue;
  String _defaultPostedWithinValue;

  String _selectedCategory;
  String _selectedPostedWithin;

  double _currentSliderValue;

  LocationResult _locationResult;

  @override
  void initState() {
    super.initState();
    _defaultCategoryValue = 'All Categories';
    _defaultPostedWithinValue = AppConstants.filterByTimeList[0];
//    _defaultLocation = widget.address;
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

  void _applyFilter({
    @required double latitude,
    @required double longitude,
    @required String algoliaAppId,
    @required String algoliaSearchApiKey,
  }) {
    _searchConfigCubit.setConfig(
      searchText: widget.searchText,
      category:
          _selectedCategory == _defaultCategoryValue ? '' : _selectedCategory,
      postedWithin: _selectedPostedWithin == _defaultPostedWithinValue
          ? ''
          : _selectedPostedWithin,
      algoliaAppId: algoliaAppId,
      algoliaSearchApiKey: algoliaSearchApiKey,
      address: _addressController.text,
      latitude: latitude,
      longitude: longitude,
      range: _currentSliderValue, // default
    );
    _searchCubit.search(
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
      range: _currentSliderValue,
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

  _getLocation(BuildContext context, UserModel currentUser,
      RemoteConfigState remoteConfigState) async {
    _locationResult = await showLocationPicker(
      context,
      remoteConfigState.firebaseApiKey,
      initialCenter: LatLng(
        currentUser.geoLocation?.latitude,
        currentUser.geoLocation?.longitude,
      ),
      myLocationButtonEnabled: true,
      hintText: 'Address',
    );

    if (_locationResult != null &&
        _locationResult.address != null &&
        _locationResult.address.isNotEmpty) {
      _addressController.text = _locationResult.address;
    }
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
                      _locationResult = null;
                      _addressController.text = widget.address;
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
          String algoliaAppId = searchConfigState.algoliaAppId;
          String algoliaSearchApiKey = searchConfigState.algoliaSearchApiKey;
          double latitude = searchConfigState.latitude;
          double longitude = searchConfigState.longitude;
          _addressController.text = searchConfigState.address;
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
                        'Change Location',
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
                  child: _buildAddressForm(context),
                ),
                Padding(
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
                Padding(
                  padding: EdgeInsets.only(
                    top: appSizeConfig.safeBlockVertical * 10,
                    right: appSizeConfig.safeBlockHorizontal * 5,
                    left: appSizeConfig.safeBlockHorizontal * 5,
                  ),
                  child: ActionButton(
                    title: 'Apply',
                    onPressed: () {
                      if (_locationResult != null) {
                        latitude = _locationResult.latLng.latitude;
                        longitude = _locationResult.latLng.longitude;
                      }
                      _applyFilter(
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

  Widget _buildAddressForm(BuildContext context) {
    return BlocBuilder<RemoteConfigCubit, RemoteConfigState>(
      builder: (_, remoteConfigDataState) {
        return BlocBuilder<CurrentUserCubit, CurrentUserState>(
          builder: (_, currentUserState) {
            return InkWell(
              onTap: () {
                if (currentUserState.isAnonymous) {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    builder: (BuildContext bc) {
                      return ModalSignUpScreen();
                    },
                  );
                } else {
                  _locationCubit.getInitialUserLocation();
                  _getLocation(
                    context,
                    currentUserState.currentUserModel,
                    remoteConfigDataState,
                  );
                }
              },
              child: IgnorePointer(
                child: SignTextFormField(
                  controller: _addressController,
                  textInputType: TextInputType.text,
                  validator: (_) {
                    return !currentUserState.isLocationValid
                        ? 'Invalid Location'
                        : null;
                  },
                  hintText: "Location",
                  obscureText: false,
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildSlider(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoSlider(
        value: _currentSliderValue.toDouble(),
        min: 1,
        max: 100.0,
        divisions: 100,
        onChanged: (double newValue) {
          setState(() {
            _currentSliderValue = newValue;
          });
        },
      );
    } else {
      return Slider(
        value: _currentSliderValue,
        min: 1,
        max: 100.0,
        divisions: 100,
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
