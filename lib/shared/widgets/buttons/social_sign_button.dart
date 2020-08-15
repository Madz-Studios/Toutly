import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:flutter/material.dart';

class SocialSignButton extends StatelessWidget {
  SocialSignButton({
    this.icon,
    this.onPressed,
  });

  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: kPrimaryColor,
      splashColor: Colors.green,
      icon: icon,
      onPressed: onPressed,
    );
  }
}
