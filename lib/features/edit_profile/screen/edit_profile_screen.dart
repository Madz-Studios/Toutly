import 'dart:io';

import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/current_user/list/all/all_list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/user_profile/widgets/select_profile_photo.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/text_fields/sign_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfileScreen extends StatefulWidget {
  final UserModel currentUser;
  EditProfileScreen(this.currentUser);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final CurrentUserCubit _currentUserCubit = getIt<CurrentUserCubit>();
  final AuthCubit _authCubit = getIt<AuthCubit>();
  final AllListBarterModelCurrentUserCubit _allListBarterModelCurrentUserCubit =
      getIt<AllListBarterModelCurrentUserCubit>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_onNameChanged);

    _nameController.text = widget.currentUser.name;
    _emailController.text = widget.currentUser.email;
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
  }

  void _onNameChanged() {
    _currentUserCubit.nameChanged(_nameController.text);
  }

  _onSaveClicked(UserModel currentUser) async {
    currentUser.name = _nameController.text;
    await _currentUserCubit.updateCurrentLoggedInUser(currentUser: currentUser);

    ///if the current user change name or profile photo, update all the posted barter items.
    await _allListBarterModelCurrentUserCubit.updateAllBarterItemsOfCurrentUser(
        _currentUserCubit.state.currentUserModel);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<CurrentUserCubit, CurrentUserState>(
      builder: (_, currentUserState) {
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
                          Icons.power_settings_new,
                          color: kSecondaryRedAccentColor,
                        ),
                        onPressed: () {
                          if (Platform.isIOS) {
                            _showCupertinoDialog(context);
                          } else {
                            _showMaterialDialog(context);
                          }
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
    return BlocBuilder<SearchConfigCubit, SearchConfigState>(
      builder: (_, searchConfigState) {
        return BlocBuilder<LocationCubit, LocationState>(
          builder: (_, locationState) {
            return BlocBuilder<CurrentUserCubit, CurrentUserState>(
              builder: (_, currentUserState) {
                final currentUser = currentUserState.currentUserModel;
                return SingleChildScrollView(
                  child: Column(
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
                          vertical: appSizeConfig.safeBlockVertical * 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ActionButton(
                              title: 'Save',
                              color: kPrimaryColor,
                              onPressed: () {
                                _onSaveClicked(currentUser);
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  void _showMaterialDialog(BuildContext mainContext) {
    showDialog(
      barrierDismissible: false,
      context: mainContext,
      builder: (BuildContext subContext) {
        return AlertDialog(
          title: Text(
            "Are you sure you want to logout?",
          ),
          actions: [
            FlatButton(
              child: Text(
                "Yes",
                style: TextStyle(
                  color: kSecondaryRedAccentColor,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
                _authCubit.signedOut();
              },
            ),
            FlatButton(
              child: Text(
                "No",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoDialog(BuildContext mainContext) {
    showDialog(
      barrierDismissible: true,
      context: mainContext,
      builder: (BuildContext subContext) {
        return CupertinoAlertDialog(
          title: Text(
            "Are you sure you want to logout?",
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              isDefaultAction: true,
              textStyle: TextStyle(
                color: kSecondaryRedAccentColor,
              ),
              child: Text("Yes"),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
                _authCubit.signedOut();
              },
            ),
            CupertinoDialogAction(
              isDefaultAction: true,
              child: Text(
                "No",
                style: TextStyle(),
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
