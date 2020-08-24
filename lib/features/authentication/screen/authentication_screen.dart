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
  final _locationCubit = getIt<LocationCubit>();

  final _remoteConfigCubit = getIt<RemoteConfigCubit>();

  final _currentUserCubit = getIt<CurrentUserCubit>();

  final _appleSignCubit = getIt<AppleSignCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, authState) {
        if (authState.isAuth) {
          _locationCubit.getInitialUserLocation();
          _remoteConfigCubit.getConfigData();
          _currentUserCubit.getCurrentLoggedInUser();
          return BlocBuilder<LocationCubit, LocationState>(
            builder: (_, locationState) {
              return BlocBuilder<RemoteConfigCubit, RemoteConfigState>(
                builder: (_, remoteConfigState) {
                  return BlocBuilder<CurrentUserCubit, CurrentUserState>(
                    builder: (_, currentUserState) {
                      debugPrint('currentUserState = ${currentUserState.info}');
                      debugPrint(
                          'remoteConfigState = ${remoteConfigState.info}');
                      debugPrint('locationState = ${locationState.info}');
                      if (locationState.isSuccess &&
                          remoteConfigState.isSuccess &&
                          currentUserState.isSuccess) {
                        return NavigationScreen(
                          locationState: locationState,
                          remoteConfigState: remoteConfigState,
                          currentUserState: currentUserState,
                        );
                      } else {
                        debugPrint(
                            'currentUserState = ${currentUserState.info}');
                        debugPrint(
                            'remoteConfigState = ${remoteConfigState.info}');
                        debugPrint('locationState = ${locationState.info}');
                        return ScaffoldLoadingOrErrorWidgetUtil(
                            '${locationState.info}');
                      }
                    },
                  );
                },
              );
            },
          );
        } else if (!authState.isAuth) {
          _appleSignCubit.checkIfAppleIsAvailable();
          return SignInScreen();
        } else {
          return ScaffoldLoadingOrErrorWidgetUtil(authState.info);
        }
      },
    );
  }
}
