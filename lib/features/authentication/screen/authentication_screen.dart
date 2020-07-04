import 'package:Toutly/features/authentication/bloc/authentication_bloc.dart';
import 'package:Toutly/features/navigation/screen/navigation_screen.dart';
import 'package:Toutly/features/signin/screen/signin_screen.dart';
import 'package:Toutly/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Authentication Screen
class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        if (state.isAppJustStarted) {
          return SplashScreen();
        } else if (state.isAuthenticated) {
          return NavigationScreen();
        } else {
          return SignInScreen();
        }
      },
    );
  }
}
