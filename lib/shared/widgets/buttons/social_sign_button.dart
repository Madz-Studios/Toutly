import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/shared/bloc/sign/sign_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:flutter/material.dart';

class SocialSignButton extends StatelessWidget {
  SocialSignButton({
    Key key,
    @required SignEvent signEvent,
    @required Widget icon,
  })  : _signEvent = signEvent,
        _icon = icon,
        super(key: key);

  final _signBloc = getIt<SignBloc>();

  final SignEvent _signEvent;
  final Widget _icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: kPrimaryColor,
      splashColor: Colors.green,
      icon: _icon,
      onPressed: () {
        print("onPressed called.");
        _signBloc.add(_signEvent);
      },
    );
  }
}
