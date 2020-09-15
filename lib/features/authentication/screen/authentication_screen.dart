import 'package:Toutly/core/cubits/apple_sign/apple_sign_cubit.dart';
import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/navigation/screen/navigation_screen.dart';
import 'package:Toutly/features/signin/screen/signin_screen.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Authentication Screen
class AuthenticationScreen extends StatelessWidget {
  final _appleSignCubit = getIt<AppleSignCubit>();

  @override
  Widget build(BuildContext context) {
    _appleSignCubit.checkIfAppleIsAvailable();
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, authState) {
        if (authState.isAuth) {
          final Trace myTrace = FirebasePerformance.instance
              .newTrace("AuthenticationScreen authState.isAuth");
          myTrace.start();
          return NavigationScreen();
        } else {
          return SignInScreen();
        }
      },
    );
  }
}
