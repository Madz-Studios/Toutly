import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget {
  showMaterialDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => new AlertDialog(
        title: LinearProgressIndicator(),
      ),
    );
  }

  showCupertinoDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => CupertinoAlertDialog(
        content: CupertinoActivityIndicator(),
      ),
    );
  }
}
