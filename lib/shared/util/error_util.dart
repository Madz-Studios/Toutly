import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingOrErrorWidgetUtil extends StatelessWidget {
  final String errorString;
  LoadingOrErrorWidgetUtil(this.errorString);
  @override
  Widget build(BuildContext context) {
    if (errorString.isNotEmpty) {
      return Scaffold(
        body: Center(
          child: Text(
            'Error: $errorString',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
      );
    } else {
      if (Platform.isIOS) {
        return Scaffold(
          body: Center(
            child: CupertinoActivityIndicator(),
          ),
        );
      } else {
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    }
  }
}
