import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/authentication/bloc/authentication_bloc.dart';
import 'package:Toutly/features/user_profile/widgets/select_profile_photo.dart';
import 'package:Toutly/shared/bloc/location/location_bloc.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
import 'package:Toutly/shared/bloc/search/search_bloc.dart';
import 'package:Toutly/shared/bloc/search_config/search_config_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/text_fields/sign_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EditProfileScreen extends StatefulWidget {
  final UserModel userModel;
  EditProfileScreen({@required this.userModel});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _currentUserCubit = getIt<CurrentUserCubit>();
  final _authBloc = getIt<AuthenticationBloc>();
  final _locationBloc = getIt<LocationBloc>();
  final _searchBloc = getIt<SearchBloc>();
  final _searchConfig = getIt<SearchConfigBloc>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_onNameChanged);
    _addressController.addListener(_onAddressChanged);

    setInitialProfileValue(widget.userModel);
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
      RemoteConfigDataState remoteConfigDataState) {
    currentUser.name = _nameController.text;
    currentUser.address = "${locationState.placeMark.subLocality}, "
        "${locationState.placeMark.locality}";

    currentUser.geoLocation = locationState.geoPoint;
    _currentUserCubit.updateCurrentLoggedInUser(currentUser);

    _searchConfig.add(
      SearchConfigEvent.setConfig(
        searchText: searchConfigState.searchText,
        category: searchConfigState.category,
        postedWithin: searchConfigState.postedWithin,
        latitude: locationState.geoPoint.latitude,
        longitude: locationState.geoPoint.longitude,
      ),
    );

    _searchBloc.add(
      SearchEvent.search(
        algoliaAppId: remoteConfigDataState.algoliaAppId,
        algoliaSearchApiKey: remoteConfigDataState.algoliaSearchApiKey,
        latitude: locationState.geoPoint.latitude,
        longitude: locationState.geoPoint.longitude,
        searchText: searchConfigState.searchText,
        category: searchConfigState.category,
        postedWithin: searchConfigState.postedWithin,
      ),
    );

    ///refresh current user
    _currentUserCubit.getCurrentLoggedInUser();

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (_, currentUserState) {
        UserModel currentUser;
        if (currentUserState.isSuccess) {
          currentUser = currentUserState.currentUserModel;
        }
        return BlocBuilder<LocationBloc, LocationState>(
          builder: (_, locationState) {
            return BlocBuilder<SearchConfigBloc, SearchConfigState>(
              builder: (_, searchConfigState) {
                return BlocBuilder<RemoteConfigDataBloc, RemoteConfigDataState>(
                  builder: (_, remoteConfigDataState) {
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
                          IconButton(
                            icon: Icon(
                              Icons.check,
                              color: kPrimaryColor,
                            ),
                            onPressed: () {
                              _onSaveClicked(currentUser, locationState,
                                  searchConfigState, remoteConfigDataState);
                            },
                          ),
                        ],
                      ),
                      body: SafeArea(
                        child: SingleChildScrollView(
                          child:
                              BlocBuilder<CurrentUserCubit, CurrentUserState>(
                            builder: (_, currentUserState) {
                              UserModel currentUser;
                              if (currentUserState.isSuccess) {
                                currentUser = currentUserState.currentUserModel;
                                _emailController.text = currentUser.email;

                                return _buildEditProfileForm(appSizeConfig,
                                    currentUser, currentUserState, context);
                              } else {
                                return Container();
                              }
                            },
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }

  Column _buildEditProfileForm(
      AppSizeConfig appSizeConfig,
      UserModel currentUser,
      CurrentUserState currentUserState,
      BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
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
              ),
              child: SignTextFormField(
                controller: _nameController,
                textInputType: TextInputType.text,
                validator: (_) {
                  return !currentUserState.isNameValid ? 'Invalid Name' : null;
                },
                hintText: "Name",
                obscureText: false,
              ),
            ),
            SizedBox(
              height: appSizeConfig.safeBlockVertical * 3,
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
            SizedBox(
              height: appSizeConfig.safeBlockVertical * 3,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.safeBlockHorizontal * 5,
              ),
              child: _buildAddressForm(context, currentUser, currentUserState),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: appSizeConfig.safeBlockHorizontal * 10,
            vertical: appSizeConfig.safeBlockVertical * 5,
          ),
          child: ActionButton(
            title: 'Logout',
            onPressed: () {
              Navigator.pop(context);
              _authBloc.add(AuthenticationEvent.signedOut());
            },
          ),
        )
      ],
    );
  }

  BlocBuilder<RemoteConfigDataBloc, RemoteConfigDataState> _buildAddressForm(
    BuildContext context,
    UserModel currentUser,
    CurrentUserState userState,
  ) {
    return BlocBuilder<RemoteConfigDataBloc, RemoteConfigDataState>(
      builder: (_, remoteConfigDataState) {
        return BlocBuilder<LocationBloc, LocationState>(
          builder: (_, locationState) {
            return InkWell(
              onTap: () {
                _locationBloc.add(LocationEvent.getInitialUserLocation());
                _getLocation(
                  context,
                  currentUser,
                  remoteConfigDataState,
                );
              },
              child: IgnorePointer(
                child: SignTextFormField(
                  controller: _addressController,
                  textInputType: TextInputType.text,
                  validator: (_) {
                    return !userState.isLocationValid
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

  void setInitialProfileValue(UserModel userModel) {
    _nameController.text = userModel?.name ?? '';
    _addressController.text = userModel?.address ?? '';
  }

  _getLocation(BuildContext context, UserModel currentUser,
      RemoteConfigDataState remoteConfigDataState) async {
    LocationResult result = await showLocationPicker(
      context,
      remoteConfigDataState.firebaseApiKey,
      initialCenter: LatLng(
        currentUser.geoLocation?.latitude,
        currentUser.geoLocation?.longitude,
      ),
      myLocationButtonEnabled: true,
      hintText: 'Address',
    );

    if (result != null && result.address != null && result.address.isNotEmpty) {
      _addressController.text = result.address;

      _locationBloc.add(
        LocationEvent.updateUserLocation(
          result?.latLng?.latitude ?? 0,
          result?.latLng?.longitude ?? 0,
        ),
      );
    }
  }
}
