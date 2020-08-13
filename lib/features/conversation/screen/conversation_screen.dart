import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:flutter/material.dart';

class ConversationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackOrCloseButton(
          isDialog: false,
          onPressed: () {
            Navigator.pop(context);
          },
          buttonColor: kPrimaryColor,
        ),
      ),
      body: Center(
        child: Text('Conversation Screen'),
      ),
    );
  }
}
