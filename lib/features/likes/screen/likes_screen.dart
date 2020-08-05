import 'package:flutter/material.dart';

class LikesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text('Likes Screen'),
                Placeholder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
