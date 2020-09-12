import 'package:Toutly/core/cubits/apple_sign/apple_sign_cubit.dart';
import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/remote_config/remote_config_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/navigation/screen/navigation_screen.dart';
import 'package:Toutly/features/signin/screen/signin_screen.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Authentication Screen
class AuthenticationScreen extends StatelessWidget {
  final _remoteConfigCubit = getIt<RemoteConfigCubit>();

  final _currentUserCubit = getIt<CurrentUserCubit>();

  final _appleSignCubit = getIt<AppleSignCubit>();

  final _authCubit = getIt<AuthCubit>();

  final _locationCubit = getIt<LocationCubit>();

  @override
  Widget build(BuildContext context) {
    _appleSignCubit.checkIfAppleIsAvailable();
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, authState) {
        if (authState.isAuth) {
          _locationCubit.getInitialUserLocation();
          _remoteConfigCubit.getConfigData();
          _currentUserCubit.getCurrentLoggedInUser();
          return BlocBuilder<RemoteConfigCubit, RemoteConfigState>(
            builder: (_, remoteConfigState) {
              if (remoteConfigState.isSuccess) {
                debugPrint('remoteConfigState = ${remoteConfigState.info}');
                return BlocBuilder<CurrentUserCubit, CurrentUserState>(
                  builder: (_, currentUserState) {
                    if (currentUserState.isSuccess) {
                      if (currentUserState.currentUserModel == null) {
                        _authCubit.signedOut();
                      }
                      debugPrint('currentUserState = ${currentUserState.info}');
                      return BlocBuilder<LocationCubit, LocationState>(
                        builder: (_, locationState) {
                          if (locationState.isSuccess) {
                            debugPrint('locationState = ${locationState.info}');
                            return NavigationScreen();
                          }
                          debugPrint('locationState = ${locationState.info}');
                          return ScaffoldLoadingOrErrorWidgetUtil(
                              '${locationState.info}');
                        },
                      );
                    }
                    debugPrint('currentUserState = ${currentUserState.info}');
                    return ScaffoldLoadingOrErrorWidgetUtil(
                        '${currentUserState.info}');
                  },
                );
              }
              debugPrint('remoteConfigState = ${remoteConfigState.info}');
              return ScaffoldLoadingOrErrorWidgetUtil(
                  '${remoteConfigState.info}');
            },
          );
        } else {
          return SignInScreen();
        }
      },
    );
  }
}
