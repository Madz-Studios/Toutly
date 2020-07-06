import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/authentication/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  final _authBloc = getIt<AuthenticationBloc>();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('Favourites Screen'),
          Expanded(
            child: Placeholder(),
          ),
          RaisedButton(
            child: Text('Logout'),
            onPressed: () {
              print('Log out!');
              _authBloc.add(AuthenticationEvent.signedOut());
            },
          )
        ],
      ),
    );
  }
}
