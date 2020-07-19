import 'package:flutter/material.dart';

class TradeTextArea extends StatelessWidget {
  TradeTextArea(this.controller);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: 6,
      keyboardType: TextInputType.multiline,
      maxLength: 500,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w300,
        fontSize: 12.0,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0XFFF7F5F5),
        hintText: 'Write a message..',
        hintStyle: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontSize: 12.0,
          color: Colors.black,
        ),
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
    );
  }
}
