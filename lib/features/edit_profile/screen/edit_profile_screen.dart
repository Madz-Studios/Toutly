import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/authentication/bloc/authentication_bloc.dart';
import 'package:Toutly/features/user_profile/widgets/select_profile_photo.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/text_fields/sign_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfileScreen extends StatefulWidget {
  final UserModel userModel;
  EditProfileScreen({@required this.userModel});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _userBloc = getIt<UserBloc>();
  final _authBloc = getIt<AuthenticationBloc>();

  final _nameController = TextEditingController();
  final _locationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_onNameChanged);
    _locationController.addListener(_onLocationChanged);

    setInitialProfileValue(widget.userModel);
  }

  void _onNameChanged() {
    _userBloc.add(
      UserEvent.nameChanged(name: _nameController.text),
    );
  }

  void _onLocationChanged() {
    _userBloc.add(
      UserEvent.locationChanged(location: _locationController.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, userState) {
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
                  userState.userModel.name = _nameController.text;
                  userState.userModel.address = _locationController.text;
                  _userBloc.add(
                    UserEvent.updateCurrentLoggedInUser(
                      userState.userModel,
                    ),
                  );
                  Navigator.pop(context);
                  _userBloc.add(
                    UserEvent.getCurrentLoggedInUser(),
                  );
                },
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: appSizeConfig.safeBlockVertical * 2,
                    ),
                    SelectProfilePhoto(userState.userModel),
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
                          return !userState.isNameValid ? 'Invalid Name' : null;
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
                        controller: _locationController,
                        textInputType: TextInputType.text,
                        validator: (_) {
                          return !userState.isLocationValid
                              ? 'Invalid Location'
                              : null;
                        },
                        hintText: "Location",
                        obscureText: false,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: appSizeConfig.safeBlockHorizontal * 10,
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
            ),
          ),
        );
      },
    );
  }

  void setInitialProfileValue(UserModel userModel) {
    _nameController.text = userModel?.name ?? '';
    _locationController.text = userModel?.address ?? '';
  }
}
