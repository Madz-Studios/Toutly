import 'dart:io';

import 'package:flutter/material.dart';

class BackOrCloseButton extends StatelessWidget {
  final bool isDialog;
  final Color buttonColor;
  BackOrCloseButton({
    @required this.isDialog,
    this.buttonColor = Colors.black,
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
      onPressed: () {
        print('Close');
        Navigator.pop(context);
      },
    );
  }
}
