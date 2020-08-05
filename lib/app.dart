import 'package:Toutly/features/post/bloc/post_bloc.dart';
import 'package:Toutly/features/trade_offer/bloc/trade_offer_bloc.dart';
import 'package:Toutly/shared/bloc/barter/barter_bloc.dart';
import 'package:Toutly/shared/bloc/location/location_bloc.dart';
import 'package:Toutly/shared/bloc/remote_config_data/remote_config_data_bloc.dart';
import 'package:Toutly/shared/bloc/search/search_bloc.dart';
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
import 'features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'flavors.dart';
import 'shared/bloc/apple_sign_in/apple_sign_in_bloc.dart';
import 'shared/bloc/sign/sign_bloc.dart';
import 'shared/bloc/user/user_bloc.dart';

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
          create: (BuildContext context) => getIt<NavigationBloc>()
            ..add(
              NavigationEvent.goToHomeScreenEvent(),
            ),
        ),

        /// Post Bloc
        BlocProvider<PostBloc>(
          create: (BuildContext context) => getIt<PostBloc>(),
        ),

        /// View Barter Item Bloc
        BlocProvider<ViewBarterItemBloc>(
          create: (BuildContext context) => getIt<ViewBarterItemBloc>(),
        ),

        /// Barter Items Bloc
        BlocProvider<BarterBloc>(
          create: (BuildContext context) => getIt<BarterBloc>(),
        ),

        /// TradeOffer Bloc
        BlocProvider<TradeOfferBloc>(
          create: (BuildContext context) => getIt<TradeOfferBloc>(),
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
          create: (BuildContext context) => getIt<RemoteConfigDataBloc>(),
        ),

        /// Location Bloc
        BlocProvider<LocationBloc>(
          create: (BuildContext context) => getIt<LocationBloc>(),
        ),

        /// User Bloc
        BlocProvider<UserBloc>(
          create: (BuildContext context) => getIt<UserBloc>(),
        ),

        /// Search Bloc
        BlocProvider<SearchBloc>(
            create: (BuildContext context) => getIt<SearchBloc>()),
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
