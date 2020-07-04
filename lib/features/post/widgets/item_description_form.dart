import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/navigation/bloc/navigation_bloc.dart';
import 'package:Toutly/features/post/bloc/post_bloc.dart';
import 'package:Toutly/features/post/widgets/post_item_textfield_form.dart';
import 'package:Toutly/features/view_barter_item/bloc/view_item_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:app_settings/app_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ItemDescriptionForm extends StatefulWidget {
  @override
  _ItemDescriptionFormState createState() => _ItemDescriptionFormState();
}

class _ItemDescriptionFormState extends State<ItemDescriptionForm> {
  final _postBloc = getIt<PostBloc>();
  final _navBloc = getIt<NavigationBloc>();
  final _viewItemBloc = getIt<ViewItemBloc>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _preferredItemController = TextEditingController();
  final _locationController = TextEditingController();

  String _selectedCategory;
  GeoPoint _geoLocation;
  String _geoHash;

  @override
  void initState() {
    super.initState();
    _titleController.addListener(_onTitleChanged);
    _descriptionController.addListener(_onDescriptionChanged);
    _preferredItemController.addListener(_onPreferredItemChanged);
    _locationController.addListener(_onLocationChanged);

    _selectedCategory = AppConstants.categoryList[0];
  }

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    _preferredItemController.dispose();
    _locationController.dispose();
  }

  void _onTitleChanged() {
    _postBloc.add(PostEvent.titleChanged(
      title: _titleController.text,
    ));
  }

  void _onDescriptionChanged() {
    _postBloc.add(PostEvent.descriptionChanged(
      description: _descriptionController.text,
    ));
  }

  void _onPreferredItemChanged() {
    _postBloc.add(PostEvent.preferredItemChanged(
      preferredItem: _preferredItemController.text,
    ));
  }

  void _onLocationChanged() {
    _postBloc.add(PostEvent.locationChanged(
      location: _locationController.text,
    ));
  }

  bool get isPopulated =>
      _titleController.text.isNotEmpty &&
      _descriptionController.text.isNotEmpty &&
      _preferredItemController.text.isNotEmpty &&
      _locationController.text.isNotEmpty;

  bool isPostButtonEnabled(PostState state) {
    return state.isPostFormValid && isPopulated && !state.isSubmitting;
  }

  void _onFormSubmitted() {
    _postBloc.add(
      PostEvent.postButtonPressed(
        address: _locationController.text,
        category: _selectedCategory,
        description: _descriptionController.text,
        preferredItem: _preferredItemController.text,
        geoLocation: _geoLocation,
        geoHash: _geoHash,
        title: _titleController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocConsumer<PostBloc, PostState>(
      listener: (context, state) {
        if (state.isFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text('${state.info}'),
                    ),
                    Icon(Icons.error),
                  ],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state.isSubmitting) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                backgroundColor: kPrimaryColor,
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Posting...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state.isSuccess) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                backgroundColor: kPrimaryColor,
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Successfully Posted'),
                  ],
                ),
              ),
            );
          _viewItemBloc.add(ViewItemEvent.editBarterItem(
            barterModel: state.barterModel,
            pickedFileList: state.pickedFileList,
          ));

          ///clear the photo list for the next post
          _postBloc.add(PostEvent.clearPhotoList());

          _navBloc.add(NavigationEvent.goToViewItemScreenEvent());
        }
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 3,
            ),
            DropdownButtonFormField(
              isExpanded: true,
              value: _selectedCategory,
              items: _buildDropdownMenuItems(),
              onChanged: onChangeDropdownItem,
              style: GoogleFonts.roboto(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0XFFF7F7F8),
                hintText: "Select Category",
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  color: Color(0XFFB5B5B5),
                ),
                labelText: 'Category',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1.5,
            ),
            PostItemTextFieldForm(
              title: 'Title',
              description: 'Describe what you are bartering in a few words',
              controller: _titleController,
              readOnly: false,
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1.5,
            ),
            PostItemTextFieldForm(
              title: 'Description',
              description: 'Describe what you are bartering in detail',
              controller: _descriptionController,
              readOnly: false,
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1.5,
            ),
            PostItemTextFieldForm(
              title: 'Preferred Item',
              description: 'Describe what you want in return',
              controller: _preferredItemController,
              readOnly: false,
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1.5,
            ),
            InkWell(
              onTap: () {
                _getLocation(context);
              },
              child: IgnorePointer(
                child: PostItemTextFieldForm(
                  title: 'Location',
                  description: 'Describe your meeting place',
                  controller: _locationController,
                  readOnly: true,
                ),
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1.5,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1.5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 7.5,
              ),
              child: ActionButton(
                title: 'Post',
                onPressed: isPostButtonEnabled(state) ? _onFormSubmitted : null,
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 3,
            ),
          ],
        );
      },
    );
  }

  List<DropdownMenuItem<String>> _buildDropdownMenuItems() {
    List<DropdownMenuItem<String>> items = List();
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

  onChangeDropdownItem(String selectedCategory) {
    setState(() {
      _selectedCategory = selectedCategory;
    });
  }

  void _clearFields() {
    _titleController.text = '';
    _descriptionController.text = '';
    _preferredItemController.text = '';
    _locationController.text = '';
  }

  _getLocation(BuildContext context) async {
    try {
      Geoflutterfire geoFlutterFire = Geoflutterfire();
      RemoteConfig remoteConfig = await RemoteConfig.instance;
      await remoteConfig.fetch();
      await remoteConfig.activateFetched();

      String apiKey;

      if (Platform.isIOS) {
        apiKey = remoteConfig.getString('ios_gcp_api_key');
      } else {
        apiKey = remoteConfig.getString('android_gcp_api_key');
      }

      print('apiKey is null = ${apiKey == null ? 'true' : 'false'}');

      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      LocationResult result = await showLocationPicker(
        context,
        apiKey,
        initialCenter: LatLng(position.latitude, position.longitude),
        myLocationButtonEnabled: true,
        hintText: 'Location',
      );

      GeoFirePoint geoFirePoint = geoFlutterFire.point(
          latitude: result.latLng.latitude, longitude: result.latLng.longitude);

      setState(() {
        _locationController.text = result.address;
        _geoLocation = GeoPoint(geoFirePoint.latitude, geoFirePoint.longitude);
        _geoHash = geoFirePoint.hash;
      });
    } on PlatformException catch (platFormException) {
      if (platFormException.code == 'PERMISSION_DENIED') {
        AppSettings.openLocationSettings();
      } else {
        print('platFormException code ${platFormException.code}');
        print('platFormException message ${platFormException.message}');
      }
    }
  }
}
