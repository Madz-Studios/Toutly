import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  final _authCubit = getIt<AuthCubit>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text('Search Screen'),
                Placeholder(),
                RaisedButton(
                  child: Text('Logout'),
                  onPressed: () {
                    debugPrint('Sign out!');
                    _authCubit.signedOut();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
