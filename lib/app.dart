import 'package:Toutly/features/edit_barter_item/bloc/edit_barter_item_bloc.dart';
import 'package:Toutly/features/home/bloc/home_bloc.dart';
import 'package:Toutly/features/post/bloc/post_bloc.dart';
import 'package:Toutly/shared/bloc/location/location_bloc.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_map_location_picker/generated/i18n.dart'
    as location_picker;
import 'package:google_map_location_picker/generated/i18n.dart';

import 'core/di/injector.dart';
import 'features/authentication/bloc/authentication_bloc.dart';
import 'features/authentication/screen/authentication_screen.dart';
import 'features/navigation/bloc/navigation_bloc.dart';
import 'features/user_barter_listing/bloc/user_barter_listing_bloc.dart';
import 'features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'flavors.dart';
import 'shared/bloc/apple_sign_in/apple_sign_in_bloc.dart';
import 'shared/bloc/sign/sign_bloc.dart';

class App extends StatelessWidget {
  final analytics = FirebaseAnalytics();

  final String env;
  App({
    @required this.env,
  });
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ///
        ///SCREENS BLOC
        ///

        /// Authentication Bloc
        BlocProvider<AuthenticationBloc>(
          create: (BuildContext context) => getIt<AuthenticationBloc>(),
        ),

        /// Sign Bloc
        BlocProvider<SignBloc>(
          create: (BuildContext context) => getIt<SignBloc>(),
        ),

        /// Navigation Bloc
        BlocProvider<NavigationBloc>(
          create: (BuildContext context) => getIt<NavigationBloc>(),
        ),

        /// Home Bloc
        BlocProvider<HomeBloc>(
          create: (BuildContext context) => getIt<HomeBloc>(),
        ),

        /// Post Bloc
        BlocProvider<PostBloc>(
          create: (BuildContext context) => getIt<PostBloc>(),
        ),

        /// View Barter Item Bloc
        BlocProvider<ViewBarterItemBloc>(
          create: (BuildContext context) => getIt<ViewBarterItemBloc>(),
        ),

        /// Edit Barter Item Bloc
        BlocProvider<EditBarterItemBloc>(
          create: (BuildContext context) => getIt<EditBarterItemBloc>(),
        ),

        /// User Items Bloc
        BlocProvider<UserBarterListingBloc>(
          create: (BuildContext context) => getIt<UserBarterListingBloc>(),
        ),

        ///
        /// UTILS BLOC
        ///

        /// Apple Sign In Bloc
        BlocProvider<AppleSignInBloc>(
          create: (BuildContext context) => getIt<AppleSignInBloc>()
            ..add(AppleSignInEvent.checkIfAppleIsAvailable()),
        ),

        /// Remote Config Data Bloc
        BlocProvider<RemoteConfigDataBloc>(
          create: (BuildContext context) => getIt<RemoteConfigDataBloc>()
            ..add(RemoteConfigDataEvent.loadConfigData()),
        ),

        /// Location Bloc
        BlocProvider<LocationBloc>(
          create: (BuildContext context) => getIt<LocationBloc>()
            ..add(LocationEvent.getInitialUserLocation()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: env == Flavor.DEV.toString() ? true : false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.robotoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        localizationsDelegates: const [
          location_picker.S.delegate,
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const <Locale>[
          Locale('en', ''),
        ],
        home: AuthenticationScreen(),
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: analytics),
        ],
      ),
    );
  }
}
