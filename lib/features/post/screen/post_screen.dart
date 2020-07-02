import 'package:Toutly/features/post/widgets/item_description_form.dart';
import 'package:Toutly/features/post/widgets/select_photos.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: appSizeConfig.blockSizeHorizontal * 3,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                _buildSelectedPhotosSection(
                  appSizeConfig,
                ),
                ItemDescriptionForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _buildSelectedPhotosSection(AppSizeConfig appSizeConfig) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: appSizeConfig.blockSizeVertical * 1.5,
        ),
        Text(
          'Selected Photos',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: appSizeConfig.blockSizeVertical * 1.5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SelectPhotos(),
            SelectPhotos(),
            SelectPhotos(),
            SelectPhotos(),
          ],
        ),
        SizedBox(
          height: appSizeConfig.blockSizeVertical * 1.5,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.0,
          ),
          child: Text(
            'Tips: Add at least 3 photos',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.normal,
              fontSize: 12,
              color: Color(0XFF949494),
            ),
          ),
        ),
      ],
    );
  }
}
