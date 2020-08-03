import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/post/bloc/post_bloc.dart';
import 'package:Toutly/features/post/widgets/post_item_textfield_form.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
import 'package:Toutly/shared/bloc/user/user_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDescriptionForm extends StatefulWidget {
  @override
  _ItemDescriptionFormState createState() => _ItemDescriptionFormState();
}

class _ItemDescriptionFormState extends State<ItemDescriptionForm> {
  final _postBloc = getIt<PostBloc>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _preferredItemController = TextEditingController();
  final _locationController = TextEditingController();

  String _selectedCategory;
  String _selectedPrivacy;
  GeoPoint _geoLocation;
  String _geoHash;
  String _locationPlaceHolderText = 'Getting Location...';

  @override
  void initState() {
    super.initState();

    _titleController.addListener(_onTitleChanged);
    _descriptionController.addListener(_onDescriptionChanged);
    _preferredItemController.addListener(_onPreferredItemChanged);
    _locationController.addListener(_onLocationChanged);

    _selectedCategory = AppConstants.categoryList[0];
    _selectedPrivacy = AppConstants.privacyList[0];
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
      _locationController.text.isNotEmpty &&
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
        privacy: _selectedPrivacy,
      ),
    );
  }

  void _clearForm() {
    _titleController.clear();
    _descriptionController.clear();
    _preferredItemController.clear();
    _locationController.clear();
  }

  List<DropdownMenuItem<String>> _buildDropdownMenuCategoryItems() {
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

  List<DropdownMenuItem<String>> _buildDropdownMenuPrivacyItems() {
    List<DropdownMenuItem<String>> items = List();
    for (String privacy in AppConstants.privacyList) {
      items.add(
        DropdownMenuItem(
          value: privacy,
          child: Text(privacy),
        ),
      );
    }
    return items;
  }

  _onChangeCategoryDropdownItem(String selectedCategory) {
    setState(() {
      _selectedCategory = selectedCategory;
    });
  }

  _onChangePrivacyDropdownItem(String selectedPrivacy) {
    setState(() {
      _selectedPrivacy = selectedPrivacy;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocConsumer<PostBloc, PostState>(
      listener: (context, state) {
        if (state.isSuccess) {
          _clearForm();
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
              items: _buildDropdownMenuCategoryItems(),
              onChanged: _onChangeCategoryDropdownItem,
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
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 3,
            ),
            DropdownButtonFormField(
              isExpanded: true,
              value: _selectedPrivacy,
              items: _buildDropdownMenuPrivacyItems(),
              onChanged: _onChangePrivacyDropdownItem,
              style: GoogleFonts.roboto(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0XFFF7F7F8),
                hintText: "Select Privacy",
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  color: Color(0XFFB5B5B5),
                ),
                labelText: 'Privacy',
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
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 3,
            ),
            PostItemTextFieldForm(
              title: 'Title',
              description: 'Describe what you are bartering in a few words',
              controller: _titleController,
              readOnly: false,
              maxLength: 100,
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1,
            ),
            PostItemTextFieldForm(
              title: 'Description',
              description: 'Describe what you are bartering in detail',
              controller: _descriptionController,
              readOnly: false,
              maxLength: 200,
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1,
            ),
            PostItemTextFieldForm(
              title: 'Preferred Item',
              description: 'Describe what you want in return',
              controller: _preferredItemController,
              readOnly: false,
              maxLength: 100,
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1,
            ),
            BlocBuilder<RemoteConfigDataBloc, RemoteConfigDataState>(
              builder: (context, remoteConfigDataState) {
                return BlocBuilder<UserBloc, UserState>(
                  builder: (context, userState) {
                    UserModel currentUser = userState.userModel;
                    _geoLocation = currentUser.geoLocation;
                    _geoHash = currentUser.geoHash;

                    return PostItemTextFieldForm(
                      title: 'Location',
                      description: 'Describe your meeting place',
                      controller: _locationController,
                      readOnly: false,
                      maxLength: 100,
                    );
                  },
                );
              },
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1,
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
}
