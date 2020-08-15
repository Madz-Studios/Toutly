import 'package:Toutly/core/cubits/apple_sign/apple_sign_cubit.dart';
import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/navigation/screen/navigation_screen.dart';
import 'package:Toutly/features/signin/screen/signin_screen.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:Toutly/shared/util/search_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Authentication Screen
class AuthenticationScreen extends StatelessWidget {
  final _locationCubit = getIt<LocationCubit>();
  final _remoteConfigBloc = getIt<RemoteConfigDataBloc>();
  final _currentUserCubit = getIt<CurrentUserCubit>();
  final _searchConfigCubit = getIt<SearchConfigCubit>();
  final _appleSignCubit = getIt<AppleSignCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, authState) {
        if (authState.isAuth) {
          _currentUserCubit.getCurrentLoggedInUser();
          _remoteConfigBloc.add(RemoteConfigDataEvent.loadConfigData());
          _locationCubit.getInitialUserLocation();
          return BlocBuilder<CurrentUserCubit, CurrentUserState>(
            builder: (_, currentUserState) {
              return BlocBuilder<RemoteConfigDataBloc, RemoteConfigDataState>(
                builder: (_, remoteConfigState) {
                  return BlocConsumer<LocationCubit, LocationState>(
                    listener: (_, locationState) {
                      if (currentUserState.isSuccess &&
                          locationState.isSuccess) {
                        final currentUser = currentUserState.currentUserModel;
                        currentUser.geoLocation = locationState.geoPoint;
                        currentUser.address =
                            "${locationState.placeMark.subLocality}, "
                            "${locationState.placeMark.locality}";

                        _currentUserCubit
                            .updateCurrentLoggedInUser(currentUser);

                        _searchConfigCubit.setConfig(
                          searchText: '',
                          category: '',
                          postedWithin: '',
                          algoliaAppId: remoteConfigState.algoliaAppId,
                          algoliaSearchApiKey:
                              remoteConfigState.algoliaSearchApiKey,
                          latitude: locationState.geoPoint.latitude,
                          longitude: locationState.geoPoint.longitude,
                        );

                        SearchUtil().searchSubmit(
                          searchText: '',
                          category: '',
                          postedWithin: '',
                          algoliaSearchApiKey:
                              remoteConfigState.algoliaSearchApiKey,
                          algoliaAppId: remoteConfigState.algoliaAppId,
                          latitude: locationState.geoPoint.latitude,
                          longitude: locationState.geoPoint.longitude,
                        );
                      }
                    },
                    builder: (_, locationState) {
                      if (locationState.isSuccess) {
                        return BlocBuilder<CurrentUserCubit, CurrentUserState>(
                          builder: (_, currentUserState) {
                            if (currentUserState.isSuccess &&
                                locationState.isSuccess) {
                              return NavigationScreen();
                            } else {
                              return LoadingOrErrorWidgetUtil(
                                  currentUserState.info);
                            }
                          },
                        );
                      } else {
                        return LoadingOrErrorWidgetUtil(locationState.info);
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
          return LoadingOrErrorWidgetUtil(authState.info);
        }
      },
    );
  }
}
