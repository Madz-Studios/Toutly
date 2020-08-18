import 'package:Toutly/core/cubits/apple_sign/apple_sign_cubit.dart';
import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/remote_config/remote_config_cubit.dart';
import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/navigation/screen/navigation_screen.dart';
import 'package:Toutly/features/signin/screen/signin_screen.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:Toutly/shared/util/search_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

/// Authentication Screen
class AuthenticationScreen extends StatelessWidget {
  final _locationCubit = getIt<LocationCubit>();

  final _remoteConfigCubit = getIt<RemoteConfigCubit>();

  final _currentUserCubit = getIt<CurrentUserCubit>();

  final _appleSignCubit = getIt<AppleSignCubit>();

  final _searchConfigCubit = getIt<SearchConfigCubit>();

  @override
  Widget build(BuildContext context) {
    bool _isCurrentUserStateSuccess = false;
    bool _isRemoteConfigStateSuccess = false;
    bool _isLocationStateSuccess = false;

    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, authState) {
        UserModel currentUser;
        GeoPoint geoPoint;
        Placemark placeMark;
        String algoliaSearchApiKey;
        String algoliaAppId;
        if (authState.isAuth) {
          return MultiBlocListener(
            listeners: [
              BlocListener<CurrentUserCubit, CurrentUserState>(
                listener: (context, state) {
                  if (state.isSuccess) {
                    currentUser = state.currentUserModel;
                    _isCurrentUserStateSuccess = true;
                  }
                },
              ),
              BlocListener<LocationCubit, LocationState>(
                listener: (context, state) {
                  if (state.isSuccess) {
                    geoPoint = state.geoPoint;
                    placeMark = state.placeMark;

                    _isLocationStateSuccess = true;

                    if (_isCurrentUserStateSuccess &&
                        _isRemoteConfigStateSuccess &&
                        _isLocationStateSuccess) {
                      ///update current user using the values of location
                      currentUser.geoLocation = state.geoPoint;
                      currentUser.address = "${placeMark.subLocality}, "
                          "${placeMark.locality}";

                      _currentUserCubit.updateCurrentLoggedInUser(currentUser);

                      ///update search config from the values of remote config and location
                      _searchConfigCubit.setConfig(
                        searchText: '',
                        category: '',
                        postedWithin: '',
                        algoliaAppId: algoliaAppId,
                        algoliaSearchApiKey: algoliaSearchApiKey,
                        latitude: geoPoint.latitude,
                        longitude: geoPoint.longitude,
                      );

                      ///initial search
                      SearchUtil().searchSubmit(
                        searchText: '',
                        category: '',
                        postedWithin: '',
                        algoliaSearchApiKey: algoliaSearchApiKey,
                        algoliaAppId: algoliaAppId,
                        latitude: geoPoint.latitude,
                        longitude: geoPoint.longitude,
                      );
                    }
                  }
                },
              ),
              BlocListener<RemoteConfigCubit, RemoteConfigState>(
                listener: (context, state) {
                  if (state.isSuccess) {
                    algoliaSearchApiKey = state.algoliaSearchApiKey;
                    algoliaAppId = state.algoliaAppId;

                    _isRemoteConfigStateSuccess = true;
                  }
                },
              ),
            ],
            child: BlocBuilder<SearchConfigCubit, SearchConfigState>(
              builder: (_, state) {
                if (_isCurrentUserStateSuccess &&
                    _isRemoteConfigStateSuccess &&
                    _isLocationStateSuccess) {
                  return NavigationScreen();
                } else {
                  if (!_isCurrentUserStateSuccess) {
                    _currentUserCubit.getCurrentLoggedInUser();
                  }

                  if (!_isRemoteConfigStateSuccess) {
                    _remoteConfigCubit.getConfigData();
                  }

                  if (!_isLocationStateSuccess) {
                    _locationCubit.getInitialUserLocation();
                  }

                  return ScaffoldLoadingOrErrorWidgetUtil('');
                }
              },
            ),
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
