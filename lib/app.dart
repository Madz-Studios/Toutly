import 'package:Toutly/core/cubits/apple_sign/apple_sign_cubit.dart';
import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/current_user/list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/other_user/single_barter_item_other_user_cubit.dart';
import 'package:Toutly/core/cubits/likes/current_user/likes_current_user_cubit.dart';
import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/make_offer/make_offer_cubit.dart';
import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/cubits/sign/sign_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/features/post/bloc/post_bloc.dart';
import 'package:Toutly/shared/bloc/messages/messages_bloc.dart';
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
import 'features/authentication/screen/authentication_screen.dart';
import 'features/navigation/bloc/navigation_bloc.dart';
import 'features/view_barter_item/bloc/view_barter_item_bloc.dart';
import 'flavors.dart';

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
        /// CUBITS REGISTRATION START

        /// Current User Cubit
        BlocProvider<CurrentUserCubit>(
          create: (BuildContext context) => getIt<CurrentUserCubit>(),
        ),

        /// Other User Cubit
        BlocProvider<OtherUserCubit>(
          create: (BuildContext context) => getIt<OtherUserCubit>(),
        ),

        ///Barter Items Cubit
        BlocProvider<ListBarterModelCurrentUserCubit>(
          create: (BuildContext context) =>
              getIt<ListBarterModelCurrentUserCubit>(),
        ),

        /// Likes CurrentUser Cubit
        BlocProvider<LikesCurrentUserCubit>(
          create: (BuildContext context) => getIt<LikesCurrentUserCubit>(),
        ),

        /// Single Other User Barter Item Cubit
        BlocProvider<SingleBarterItemOtherUserCubit>(
          create: (BuildContext context) =>
              getIt<SingleBarterItemOtherUserCubit>(),
        ),

        /// Make Offer Cubit
        BlocProvider<MakeOfferCubit>(
          create: (BuildContext context) => getIt<MakeOfferCubit>(),
        ),

        /// Sign Cubit
        BlocProvider<SignCubit>(
          create: (BuildContext context) => getIt<SignCubit>(),
        ),

        /// Auth Cubit
        BlocProvider<AuthCubit>(
          create: (BuildContext context) => getIt<AuthCubit>(),
        ),

        /// Apple Sign Cubit
        BlocProvider<AppleSignCubit>(
            create: (BuildContext context) => getIt<AppleSignCubit>()),

        /// Location Bloc
        BlocProvider<LocationCubit>(
          create: (BuildContext context) => getIt<LocationCubit>(),
        ),

        /// Search Config Cubit
        BlocProvider<SearchConfigCubit>(
          create: (BuildContext context) => getIt<SearchConfigCubit>(),
        ),

        /// CUBITS REGISTRATION END

        ///SCREENS BLOC
        ///

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

        /// Remote Config Data Bloc
        BlocProvider<RemoteConfigDataBloc>(
          create: (BuildContext context) => getIt<RemoteConfigDataBloc>(),
        ),

        /// Search Bloc
        BlocProvider<SearchBloc>(
          create: (BuildContext context) => getIt<SearchBloc>(),
        ),

        /// Messages Bloc
        BlocProvider<MessagesBloc>(
          create: (BuildContext context) => getIt<MessagesBloc>(),
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
