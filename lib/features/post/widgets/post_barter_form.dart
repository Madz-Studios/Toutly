import 'package:Toutly/core/cubits/post_barter/post_barter_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class PostBarterForm extends StatefulWidget {
  @override
  _PostBarterFormState createState() => _PostBarterFormState();
}

class _PostBarterFormState extends State<PostBarterForm> {
  final _postBarterCubit = getIt<PostBarterCubit>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _preferredItemController = TextEditingController();
  final _locationController = TextEditingController();

  String _selectedCategory;
  String _selectedPrivacy;
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
    _postBarterCubit.titleChanged(
      _titleController.text,
    );
  }

  void _onDescriptionChanged() {
    _postBarterCubit.descriptionChanged(
      _descriptionController.text,
    );
  }

  void _onPreferredItemChanged() {
    _postBarterCubit.preferredItemChanged(
      _preferredItemController.text,
    );
  }

  void _onLocationChanged() {
    _postBarterCubit.locationChanged(
      _locationController.text,
    );
  }

  bool get isPopulated =>
      _titleController.text.isNotEmpty &&
      _descriptionController.text.isNotEmpty &&
      _preferredItemController.text.isNotEmpty &&
      _locationController.text.isNotEmpty &&
      _locationController.text.isNotEmpty;

  bool isPostButtonEnabled(PostBarterState state) {
    return state.isPostFormValid && isPopulated && !state.isSubmitting;
  }

  void _onFormSubmitted() {
    _postBarterCubit.postButtonPressed(
      address: _locationController.text,
      category: _selectedCategory,
      description: _descriptionController.text,
      preferredItem: _preferredItemController.text,
      geoLocation: _geoLocation,
      geoHash: _geoHash,
      title: _titleController.text,
      privacy: _selectedPrivacy,
    );
  }

  void _clearForm() {
    _titleController.clear();
    _descriptionController.clear();
    _preferredItemController.clear();
    _locationController.clear();
  }

  List<DropdownMenuItem<String>> _generateDropdownMenuCategoryItems() {
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
    return BlocConsumer<PostBarterCubit, PostBarterState>(
      listener: (context, postBarterState) {
        if (postBarterState.isSuccess) {
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
              items: _generateDropdownMenuCategoryItems(),
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
            _PostItemTextField(
              title: 'Title',
              description: 'Describe what you are bartering in a few words',
              controller: _titleController,
              readOnly: false,
              maxLength: 100,
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1,
            ),
            _PostItemTextField(
              title: 'Description',
              description: 'Describe what you are bartering in detail',
              controller: _descriptionController,
              readOnly: false,
              maxLength: 200,
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1,
            ),
            _PostItemTextField(
              title: 'Preferred Item',
              description: 'Describe what you want in return',
              controller: _preferredItemController,
              readOnly: false,
              maxLength: 100,
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 1,
            ),
            BlocBuilder<CurrentUserCubit, CurrentUserState>(
              builder: (context, currentUserState) {
                if (currentUserState.isSuccess) {
                  UserModel currentUser = currentUserState.currentUserModel;
                  _geoLocation = currentUser.geoLocation;
                  _geoHash = currentUser.geoHash;
                  _locationController.text = currentUser.address;

                  return IgnorePointer(
                    child: _PostItemTextField(
                      title: '',
                      description: 'Location',
                      controller: _locationController,
                      readOnly: true,
                      maxLength: 100,
                    ),
                  );
                } else {
                  return Container();
                }
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

class _PostItemTextField extends StatelessWidget {
  final String title;
  final String description;
  final TextEditingController controller;
  final bool readOnly;
  final int maxLength;

  _PostItemTextField({
    @required this.title,
    @required this.description,
    @required this.controller,
    @required this.readOnly,
    @required this.maxLength,
  });
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: appSizeConfig.blockSizeHorizontal * 2.5,
            top: appSizeConfig.blockSizeVertical * 1,
          ),
          child: Text(
            description,
            style: GoogleFonts.roboto(
              fontSize: 12,
              color: Color(0XFF949494),
            ),
          ),
        ),
        SizedBox(
          height: appSizeConfig.blockSizeVertical * 1,
        ),
        TextFormField(
          readOnly: readOnly,
          controller: controller,
          keyboardType: TextInputType.text,
          maxLength: maxLength,
          textAlign: TextAlign.left,
          style: GoogleFonts.roboto(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0XFFF7F7F8),
            hintText: title,
            hintStyle: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              color: Color(0XFFB5B5B5),
            ),
            labelText: title,
            suffixText: controller.text.length >= 4 ? '' : '*',
            suffixStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.red,
            ),
            suffixIcon: !readOnly
                ? Icon(
                    Icons.lock,
                    color: Colors.transparent,
                  )
                : Icon(
                    Icons.lock,
                    color: Colors.red,
                  ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
