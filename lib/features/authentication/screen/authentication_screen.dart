import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/navigation/screen/navigation_screen.dart';
import 'package:Toutly/features/signin/screen/signin_screen.dart';
import 'package:Toutly/shared/bloc/location/location_bloc.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
import 'package:Toutly/shared/bloc/search_config/search_config_bloc.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:Toutly/shared/util/search_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Authentication Screen
class AuthenticationScreen extends StatelessWidget {
  final _locationBloc = getIt<LocationBloc>();
  final _remoteConfigBloc = getIt<RemoteConfigDataBloc>();
  final _currentUserCubit = getIt<CurrentUserCubit>();
  final _searchConfigBloc = getIt<SearchConfigBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, authState) {
        if (authState.isAuth) {
          _currentUserCubit.getCurrentLoggedInUser();
          _remoteConfigBloc.add(RemoteConfigDataEvent.loadConfigData());
          _locationBloc.add(LocationEvent.getInitialUserLocation());
          return BlocBuilder<CurrentUserCubit, CurrentUserState>(
            builder: (_, currentUserState) {
              return BlocBuilder<RemoteConfigDataBloc, RemoteConfigDataState>(
                builder: (_, remoteConfigState) {
                  return BlocConsumer<LocationBloc, LocationState>(
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

                        _searchConfigBloc.add(
                          SearchConfigEvent.setConfig(
                            searchText: '',
                            category: '',
                            postedWithin: '',
                            latitude: locationState.geoPoint.latitude,
                            longitude: locationState.geoPoint.longitude,
                          ),
                        );

                        SearchUtil().searchSubmit(
                          searchText: '',
                          category: '',
                          postedWithin: '',
                          latitude: locationState.geoPoint.latitude,
                          longitude: locationState.geoPoint.longitude,
                          algoliaSearchApiKey:
                              remoteConfigState.algoliaSearchApiKey,
                          algoliaAppId: remoteConfigState.algoliaAppId,
                        );
                      }
                    },
                    builder: (_, locationState) {
                      if (locationState.isSuccess) {
                        return BlocBuilder<CurrentUserCubit, CurrentUserState>(
                          builder: (_, currentUserState) {
                            if (currentUserState.isSuccess &&
                                currentUserState.isSuccess) {
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
          return SignInScreen();
        } else {
          return LoadingOrErrorWidgetUtil(authState.info);
        }
      },
    );
  }
}
