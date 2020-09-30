import 'package:Toutly/core/cubits/barter_messages/barter/barter_message_cubit.dart';
import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/navigation/navigation_cubit.dart';
import 'package:Toutly/core/cubits/notification/notification_cubit.dart';
import 'package:Toutly/core/cubits/post_barter/post_barter_cubit.dart';
import 'package:Toutly/core/cubits/remote_config/remote_config_cubit.dart';
import 'package:Toutly/core/cubits/search/search_cubit.dart';
import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/barter_message/barter_message_model.dart';
import 'package:Toutly/core/models/geo_firepoint_data/geo_fire_point_data.dart';
import 'package:Toutly/features/home/screen/home_screen.dart';
import 'package:Toutly/features/messages/screen/messages_screen.dart';
import 'package:Toutly/features/post/screen/post_screen.dart';
import 'package:Toutly/features/saved/screen/saved_screen.dart';
import 'package:Toutly/features/signup/screen/modal_signup_screen.dart';
import 'package:Toutly/features/user_profile/screens/user_profile_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/constants/app_navigation_index.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/util/error_util.dart';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

part '../widgets/custom_app_bar.dart';
part '../widgets/navigation_bar.dart';

/// Main screen, loads after authentication screen
class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final _postBarterCubit = getIt<PostBarterCubit>();

  final _currentUserCubit = getIt<CurrentUserCubit>();

  final _searchConfigCubit = getIt<SearchConfigCubit>();

  final _notificationCubit = getIt<NotificationCubit>();

  final _barterMessagesCubit = getIt<BarterMessageCubit>();

  final _locationCubit = getIt<LocationCubit>();

  final _searchCubit = getIt<SearchCubit>();

  final _remoteConfigCubit = getIt<RemoteConfigCubit>();
  final Geoflutterfire _geoFlutterFire = getIt<Geoflutterfire>();

  initialize() async {
    await _remoteConfigCubit.getConfigData();

    await _currentUserCubit.getCurrentLoggedInUser();
    await _locationCubit.getInitialUserLocation();

    updateCurrentUserLocation();

    await _barterMessagesCubit.getCurrentBarterMessages();
    await _notificationCubit.getCurrentUnreadBarterMessages();
    await _notificationCubit
        .initializeFirebaseMessaging(_currentUserCubit.state.currentUserModel);

    updateCurrentUserFcmToken();

    ///update search config from the values of remote config and location
    _searchConfigCubit.setConfig(
      searchText: '',
      category: '',
      postedWithin: '',
      range: kDefaultSearchRange, //default
      isNoLimitRange: kDefaultNoLimitRange,
    );

    ///initial search
    _searchCubit.search(
      searchText: '',
      category: '',
      postedWithin: '',
      range: kDefaultSearchRange, //default
      isNoLimitRange: kDefaultNoLimitRange,
    );
  }

  @override
  void initState() {
    super.initState();

    initialize();
  }

  updateCurrentUserFcmToken() async {
    String deviceToken = await _notificationCubit.getDeviceToken();
    await _currentUserCubit.updateCurrentLoggedInUserFcmToken(deviceToken: deviceToken);

  }

  updateCurrentUserLocation() {
    ///update the current user address based on the current location
    String subLocality = "${_locationCubit.state.placeMark.subLocality ?? ''}";
    String locality = "${_locationCubit.state.placeMark.locality ?? ''}";

    String address = '';
    if (subLocality.isNotEmpty) {
      address = address + subLocality + ", ";
    }
    if (locality.isNotEmpty) {
      address = address + locality;
    }

    _currentUserCubit.state.currentUserModel.address = address;

    _currentUserCubit.state.currentUserModel.geoLocation =
        _locationCubit.state.geoPoint;

    GeoFirePoint geoFirePoint = _geoFlutterFire.point(
      latitude: _locationCubit.state.geoPoint.latitude,
      longitude: _locationCubit.state.geoPoint.longitude,
    );

    ///update current user geo hash
    _currentUserCubit.state.currentUserModel.geoHash = geoFirePoint.hash;

    GeoFirePointData geoFirePointData = GeoFirePointData(
      geopoint: geoFirePoint.geoPoint,
      geohash: geoFirePoint.hash,
    );

    _currentUserCubit.state.currentUserModel.geoFirePointData =
        geoFirePointData;

    _currentUserCubit.updateCurrentLoggedInUser(
        currentUser: _currentUserCubit.state.currentUserModel);
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, navigationState) {
        return BlocBuilder<NotificationCubit, NotificationState>(
          builder: (context, notificationState) {
            if (notificationState.isSuccess) {
              if (navigationState.isHomeScreen) {
                return _buildNoAppBarSingleViewScreen(
                  HomeScreen(),
                  navigationState.index,
                );
              } else if (navigationState.isSavedScreen) {
                return _buildSingleViewScreen(
                  _CustomAppBar(
                    appSizeConfig: appSizeConfig,
                    title: 'Saved',
                  ),
                  SavedScreen(),
                  navigationState.index,
                );
              } else if (navigationState.isPostBarterScreen) {
                _postBarterCubit.reset();
                return _buildSingleViewScreen(
                  _CustomAppBar(
                    appSizeConfig: appSizeConfig,
                    title: 'Add Item',
                  ),
                  PostScreen(),
                  navigationState.index,
                );
              } else if (navigationState.isMessagesScreen) {
                return _buildSingleViewScreen(
                  _CustomAppBar(
                    appSizeConfig: appSizeConfig,
                    title: 'Messages',
                  ),
                  MessagesScreen(),
                  navigationState.index,
                );
              } else {
                return _buildNoAppBarSingleViewScreen(
                  UserProfileScreen(),
                  navigationState.index,
                );
              }
            } else {
              return ScaffoldLoadingOrErrorWidgetUtil('');
            }
          },
        );
      },
    );
  }
}

Widget _buildNoAppBarSingleViewScreen(Widget screen, int currentIndex) {
  return Scaffold(
    body: screen,
    bottomNavigationBar: _NavigationBar(
      currentIndex,
    ),
  );
}

Widget _buildSingleViewScreen(Widget appBar, Widget screen, int currentIndex) {
  return Scaffold(
    appBar: appBar,
    body: screen,
    bottomNavigationBar: _NavigationBar(
      currentIndex,
    ),
  );
}

void _showModalSignUpScreen(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8.0),
        topRight: Radius.circular(8.0),
      ),
    ),
    builder: (BuildContext bc) {
      return ModalSignUpScreen();
    },
  );
}
