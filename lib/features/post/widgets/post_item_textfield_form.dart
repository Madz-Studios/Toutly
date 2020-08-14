import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostItemTextFieldForm extends StatelessWidget {
  final String title;
  final String description;
  final TextEditingController controller;
  final bool readOnly;
  final int maxLength;

  PostItemTextFieldForm({
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
