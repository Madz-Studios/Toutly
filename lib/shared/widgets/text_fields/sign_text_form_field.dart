import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:flutter/material.dart';

class SignTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool obscureText;
  final TextInputType textInputType;
  final bool enabled;

  SignTextFormField({
    @required this.controller,
    @required this.hintText,
    @required this.validator,
    @required this.obscureText,
    @required this.textInputType,
    this.enabled,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      textAlign: TextAlign.left,
      enabled: enabled,
      style: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      keyboardType: textInputType,
      validator: validator,
      autovalidate: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0XFFF7F7F8),
        labelText: hintText,
//        labelStyle: TextStyle(
//          color: kPrimaryColor,
//        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
          color: Color(0XFFB5B5B5),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
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
    );
  }
}
