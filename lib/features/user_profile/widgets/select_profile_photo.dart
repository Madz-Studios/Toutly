import 'dart:io';

import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SelectProfilePhoto extends StatefulWidget {
  final UserModel userModel;
  SelectProfilePhoto(this.userModel);

  @override
  _SelectProfilePhotoState createState() => _SelectProfilePhotoState();
}

class _SelectProfilePhotoState extends State<SelectProfilePhoto> {
  final _currentUserCubit = getIt<CurrentUserCubit>();

  final ImagePicker _picker = ImagePicker();
  PickedFile _imageFile;
  dynamic _pickImageError;
  String _retrieveDataError;

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Column(
      children: [
        _previewImage(appSizeConfig),
        SizedBox(
          height: appSizeConfig.safeBlockVertical * 1,
        ),
        InkWell(
          child: Text(
            'Change Profile Photo',
            style: TextStyle(color: kPrimaryColor),
          ),
          onTap: () {
            _onImageButtonPressed(ImageSource.gallery);
          },
        ),
      ],
    );
  }

  void _onImageButtonPressed(ImageSource source) async {
    try {
      final pickedFile = await _picker.getImage(
        source: source,
        imageQuality: 50,
      );

      setState(() {
        _imageFile = pickedFile;
      });

      updateProfilePicture(
        _imageFile,
        widget.userModel,
      );
    } catch (e) {
      AppSettings.openLocationSettings();
      setState(() {
        _pickImageError = e;
      });
    }
  }

  Widget _previewImage(AppSizeConfig appSizeConfig) {
    final Text retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
      return retrieveError;
    }
    if (_pickImageError != null) {
      return Text(
        'Pick image error: There was an error in getting the photo. Please try again.',
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      );
    } else if (_imageFile != null) {
      return CircleAvatar(
        backgroundImage: FileImage(
          File(_imageFile.path),
        ),
        radius: appSizeConfig.safeBlockVertical * 4,
      );
    } else {
      return CircleAvatar(
        backgroundImage: widget.userModel?.photoUrl == null ||
                widget.userModel.photoUrl.isEmpty
            ? AssetImage('assets/images/profile_placeholder.png')
            : NetworkImage(widget.userModel?.photoUrl),
        radius: appSizeConfig.safeBlockVertical * 4,
      );
    }
  }

  Future<void> retrieveLostData() async {
    final LostData response = await _picker.getLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      setState(() {
        _imageFile = response.file;
      });
    } else {
      _retrieveDataError = response.exception.code;
    }
  }

  Text _getRetrieveErrorWidget() {
    if (_retrieveDataError != null) {
      final Text result = Text(_retrieveDataError);
      _retrieveDataError = null;
      return result;
    }
    return null;
  }

  void updateProfilePicture(PickedFile pickedFile, UserModel currentUser) {
    _currentUserCubit.updateCurrentLoggedInUserProfilePicture(
        pickedFile, currentUser);
  }
}
