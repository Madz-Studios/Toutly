import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/authentication/bloc/authentication_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  final _authenticationBloc = getIt<AuthenticationBloc>();
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    executeAfterBuild();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SvgPicture.asset(
          'assets/splash/toutly_splash.svg',
          width: appSizeConfig.blockSizeHorizontal * 100,
          height: appSizeConfig.blockSizeVertical * 100,
        ),
      ),
    );
  }

  Future<void> executeAfterBuild() async {
    Future.delayed(const Duration(seconds: 3), () {
      _authenticationBloc.add(AuthenticationEvent.authCheckRequested());
    });
  }
}
