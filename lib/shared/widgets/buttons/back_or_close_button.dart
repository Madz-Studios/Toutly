import 'dart:io';

import 'package:flutter/material.dart';

class BackOrCloseButton extends StatelessWidget {
  final bool isDialog;
  final Color buttonColor;
  final Function onPressed;
  BackOrCloseButton({
    @required this.isDialog,
    @required this.buttonColor,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    IconData iconData;
    if (isDialog) {
      iconData = Icons.close;
    } else {
      if (Platform.isIOS) {
        iconData = Icons.arrow_back_ios;
      } else {
        iconData = Icons.arrow_back;
      }
    }
    return IconButton(
      icon: Icon(
        iconData,
        color: buttonColor,
      ),
      onPressed: onPressed,
    );
  }
}
