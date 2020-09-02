import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:flutter/material.dart';

/// Button when press will register the user.
class ActionButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color color;
  final double fontSize;

  ActionButton({
    Key key,
    @required this.title,
    @required this.onPressed,
    this.color,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      color: color ?? kPrimaryColor,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          '$title',
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
              fontSize: fontSize ?? 14,
              color: kSecondaryWhiteSeventyColor),
        ),
      ),
    );
  }
}
