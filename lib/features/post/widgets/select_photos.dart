import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/post/bloc/post_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class SelectPhotos extends StatefulWidget {
  @override
  _SelectPhotosState createState() => _SelectPhotosState();
}

class _SelectPhotosState extends State<SelectPhotos> {
  final _postBloc = getIt<PostBloc>();

  final ImagePicker _picker = ImagePicker();
  PickedFile _imageFile;
  dynamic _pickImageError;
  String _retrieveDataError;
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocConsumer<PostBloc, PostState>(
      listener: (context, state) {
        if (state.isSuccess) {
          setState(() {
            _imageFile = null;
          });
        }
      },
      builder: (context, state) {
        return Container(
          height: appSizeConfig.blockSizeVertical * 8,
          width: appSizeConfig.blockSizeHorizontal * 20,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0XFFB4B4B4),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                8.0,
              ),
            ),
          ),
          child: _previewImage(),
        );
      },
    );
  }

  void _showAddPhotoOptions(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
      ),
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(
                        Icons.camera_alt,
                        color: kPrimaryColor,
                        size: appSizeConfig.blockSizeVertical * 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Camera',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    _onAddPhotoPressed(ImageSource.camera, context);
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(
                        Icons.photo_size_select_actual,
                        color: kPrimaryColor,
                        size: appSizeConfig.blockSizeVertical * 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Gallery',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    _onAddPhotoPressed(ImageSource.gallery, context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onAddPhotoPressed(ImageSource source, BuildContext context) async {
    try {
      final pickedFile =
          await _picker.getImage(source: source, imageQuality: 75);
      setState(() {
        _imageFile = pickedFile;
      });
    } on Exception catch (e) {
      print('Exception = $e');

      AppSettings.openLocationSettings();
    } finally {
      Navigator.pop(context);
    }
  }

  Widget _previewImage() {
    final Text retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
      return retrieveError;
    }
    if (_imageFile != null) {
      _addPhotoToList();
      return Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.0,
                ),
              ),
              image: DecorationImage(
                image: FileImage(
                  File(_imageFile.path),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              child: Icon(
                Icons.remove_circle,
                color: Color(0XFFB4B4B4),
              ),
              onTap: () {
                _removePhotoToList();
                setState(() {
                  _imageFile = null;
                });
              },
            ),
          ),
        ],
      );
    } else if (_pickImageError != null) {
      return Text(
        'Pick image error: $_pickImageError',
        textAlign: TextAlign.center,
      );
    } else {
      return IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          _showAddPhotoOptions(context);
        },
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

  void _addPhotoToList() {
    _postBloc.add(PostEvent.addPhotoToList(
      path: _imageFile.path,
      pickedFile: _imageFile,
    ));
  }

  void _removePhotoToList() {
    _postBloc.add(PostEvent.removePhotoFromList(
      path: _imageFile.path,
      pickedFile: _imageFile,
    ));
  }
}
