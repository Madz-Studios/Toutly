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
class AuthenticationScreen extends StatefulWidget {
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final _locationCubit = getIt<LocationCubit>();

  final _remoteConfigCubit = getIt<RemoteConfigCubit>();

  final _currentUserCubit = getIt<CurrentUserCubit>();

  final _appleSignCubit = getIt<AppleSignCubit>();

  @override
  void initState() {
    super.initState();
    _locationCubit.getInitialUserLocation();
    _remoteConfigCubit.getConfigData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, authState) {
        if (authState.isAuth) {
          return BlocBuilder<LocationCubit, LocationState>(
            builder: (_, locationState) {
              if (locationState.isSuccess) {
                return BlocBuilder<RemoteConfigCubit, RemoteConfigState>(
                  builder: (_, remoteConfigState) {
                    if (remoteConfigState.isSuccess) {
                      _currentUserCubit.getCurrentLoggedInUser();
                      return BlocBuilder<CurrentUserCubit, CurrentUserState>(
                        builder: (_, currentUserState) {
                          if (currentUserState.isSuccess) {
                            return NavigationScreen(locationState,
                                remoteConfigState, currentUserState);
                          } else {
                            return ScaffoldLoadingOrErrorWidgetUtil(
                                currentUserState.info);
                          }
                        },
                      );
                    } else {
                      return ScaffoldLoadingOrErrorWidgetUtil(
                          remoteConfigState.info);
                    }
                  },
                );
              } else {
                return ScaffoldLoadingOrErrorWidgetUtil(locationState.info);
              }
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
