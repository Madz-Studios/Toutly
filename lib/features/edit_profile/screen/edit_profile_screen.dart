import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/remote_config/remote_config_cubit.dart';
import 'package:Toutly/core/cubits/search/search_cubit.dart';
import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/user_profile/widgets/select_profile_photo.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/text_fields/sign_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EditProfileScreen extends StatefulWidget {
  final UserModel currentUser;
  EditProfileScreen(this.currentUser);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _currentUserCubit = getIt<CurrentUserCubit>();
  final _authCubit = getIt<AuthCubit>();
  final _locationCubit = getIt<LocationCubit>();
  final _searchCubit = getIt<SearchCubit>();
  final _searchConfigCubit = getIt<SearchConfigCubit>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_onNameChanged);
    _addressController.addListener(_onAddressChanged);

    _nameController.text = widget.currentUser.name;
    _emailController.text = widget.currentUser.email;
    _addressController.text = widget.currentUser.address;
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _addressController.dispose();
  }

  void _onNameChanged() {
    _currentUserCubit.nameChanged(_nameController.text);
  }

  void _onAddressChanged() {
    _currentUserCubit.locationChanged(_addressController.text);
  }

  _onSaveClicked(
    UserModel currentUser,
    LocationState locationState,
    SearchConfigState searchConfigState,
  ) {
    currentUser.name = _nameController.text;

    String subLocality = "${locationState.placeMark.subLocality}";
    String locality = "${locationState.placeMark.locality}";
    String address = "";
    if (subLocality.isNotEmpty) {
      address = address + subLocality + ", ";
    }
    if (locality.isNotEmpty) {
      address = address + locality;
    }

    currentUser.geoLocation = locationState.geoPoint;

    _currentUserCubit.updateCurrentLoggedInUser(currentUser);

    _searchConfigCubit.updateLatLng(
        locationState.geoPoint.latitude, locationState.geoPoint.longitude);

    _searchCubit.search(
      algoliaAppId: searchConfigState.algoliaAppId,
      algoliaSearchApiKey: searchConfigState.algoliaSearchApiKey,
      latitude: locationState.geoPoint.latitude,
      longitude: locationState.geoPoint.longitude,
      searchText: searchConfigState.searchText,
      category: searchConfigState.category,
      postedWithin: searchConfigState.postedWithin,
      range: searchConfigState.range,
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (_, currentUserState) {
        final currentUser = currentUserState.currentUserModel;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Edit Profile',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.clear,
                color: kPrimaryColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              BlocBuilder<LocationCubit, LocationState>(
                builder: (_, locationState) {
                  return BlocBuilder<SearchConfigCubit, SearchConfigState>(
                    builder: (_, searchConfigState) {
                      return IconButton(
                        icon: Icon(
                          Icons.check,
                          color: kPrimaryColor,
                        ),
                        onPressed: () {
                          _onSaveClicked(
                              currentUser, locationState, searchConfigState);
                        },
                      );
                    },
                  );
                },
              ),
            ],
          ),
          body: SafeArea(
            child: _buildEditProfileForm(appSizeConfig, context),
          ),
        );
      },
    );
  }

  Widget _buildEditProfileForm(
      AppSizeConfig appSizeConfig, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BlocBuilder<CurrentUserCubit, CurrentUserState>(
          builder: (_, currentUserState) {
            final currentUser = currentUserState.currentUserModel;
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: appSizeConfig.safeBlockVertical * 2,
                ),
                SelectProfilePhoto(currentUser),
                SizedBox(
                  height: appSizeConfig.safeBlockVertical * 3,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: appSizeConfig.safeBlockHorizontal * 5,
                    vertical: appSizeConfig.safeBlockVertical * 3,
                  ),
                  child: SignTextFormField(
                    controller: _nameController,
                    textInputType: TextInputType.text,
                    validator: (_) {
                      return !currentUserState.isNameValid
                          ? 'Invalid Name'
                          : null;
                    },
                    hintText: "Name",
                    obscureText: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: appSizeConfig.safeBlockHorizontal * 5,
                  ),
                  child: SignTextFormField(
                    controller: _emailController,
                    hintText: 'Email',
                    textInputType: TextInputType.text,
                    obscureText: false,
                    enabled: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: appSizeConfig.safeBlockHorizontal * 5,
                    vertical: appSizeConfig.safeBlockVertical * 3,
                  ),
                  child: _buildAddressForm(context),
                ),
              ],
            );
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: appSizeConfig.safeBlockHorizontal * 5,
            vertical: appSizeConfig.safeBlockVertical * 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ActionButton(
                title: 'Logout',
                color: kSecondaryRedAccentColor,
                onPressed: () {
                  Navigator.pop(context);
                  _authCubit.signedOut();
                },
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildAddressForm(BuildContext context) {
    return BlocBuilder<RemoteConfigCubit, RemoteConfigState>(
      builder: (_, remoteConfigDataState) {
        return BlocBuilder<CurrentUserCubit, CurrentUserState>(
          builder: (_, currentUserState) {
            return InkWell(
              onTap: () {
                _locationCubit.getInitialUserLocation();
                _getLocation(
                  context,
                  currentUserState.currentUserModel,
                  remoteConfigDataState,
                );
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
                  hintText: "Address",
                  obscureText: false,
                ),
              ),
            );
          },
        );
      },
    );
  }

  _getLocation(BuildContext context, UserModel currentUser,
      RemoteConfigState remoteConfigState) async {
    LocationResult result = await showLocationPicker(
      context,
      remoteConfigState.firebaseApiKey,
      initialCenter: LatLng(
        currentUser.geoLocation?.latitude,
        currentUser.geoLocation?.longitude,
      ),
      myLocationButtonEnabled: true,
      hintText: 'Address',
    );

    if (result != null && result.address != null && result.address.isNotEmpty) {
      _addressController.text = result.address;

      _locationCubit.updateUserLocation(
        result?.latLng?.latitude ?? 0,
        result?.latLng?.longitude ?? 0,
      );
    }
  }
}
