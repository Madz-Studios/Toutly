import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/authentication/bloc/authentication_bloc.dart';
import 'package:Toutly/features/navigation/screen/navigation_screen.dart';
import 'package:Toutly/features/signin/screen/signin_screen.dart';
import 'package:Toutly/features/splash/splash_screen.dart';
import 'package:Toutly/shared/bloc/location/location_bloc.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
import 'package:Toutly/shared/bloc/search_config/search_config_bloc.dart';
import 'package:Toutly/shared/util/search_util.dart';
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
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) => state.map(
        initial: (value) => SplashScreen(),
        unauthenticated: (value) => SignInScreen(),
        authenticated: (value) {
          _remoteConfigBloc.add(RemoteConfigDataEvent.loadConfigData());

//          _userBloc.add(UserEvent.getCurrentLoggedInUser());
          _currentUserCubit.getCurrentLoggedInUser();

          _locationBloc.add(LocationEvent.getInitialUserLocation());
          return BlocBuilder<RemoteConfigDataBloc, RemoteConfigDataState>(
            builder: (_, remoteConfigState) {
              return BlocConsumer<LocationBloc, LocationState>(
                listener: (_, locationState) {
                  if (locationState.isSuccess) {
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
                  return BlocBuilder<SearchConfigBloc, SearchConfigState>(
                    builder: (_, searchConfigState) {
                      return NavigationScreen();
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
