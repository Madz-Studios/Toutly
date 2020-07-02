import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/authentication/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  final _authBloc = getIt<AuthenticationBloc>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Search Screen'),
              Placeholder(),
              RaisedButton(
                child: Text('Logout'),
                onPressed: () {
                  print('Log out!');
                  _authBloc.add(AuthenticationEvent.signedOut());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
