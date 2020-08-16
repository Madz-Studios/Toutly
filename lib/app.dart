import 'package:Toutly/core/cubits/apple_sign/apple_sign_cubit.dart';
import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/current_user/list/list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/current_user/single_barter_item/delete_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/other_user/single_barter_item_other_user_cubit.dart';
import 'package:Toutly/core/cubits/likes/current_user/likes_current_user_cubit.dart';
import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/make_offer/make_offer_cubit.dart';
import 'package:Toutly/core/cubits/navigation/navigation_cubit.dart';
import 'package:Toutly/core/cubits/post_barter/post_barter_cubit.dart';
import 'package:Toutly/core/cubits/remote_config/remote_config_cubit.dart';
import 'package:Toutly/core/cubits/search/search_cubit.dart';
import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/cubits/sign/sign_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/authentication/screen/authentication_screen.dart';
import 'package:Toutly/shared/bloc/messages/messages_bloc.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_map_location_picker/generated/i18n.dart'
    as location_picker;
import 'package:google_map_location_picker/generated/i18n.dart';

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

        BlocProvider<CurrentUserCubit>(
          create: (BuildContext context) => getIt<CurrentUserCubit>(),
        ),

        BlocProvider<OtherUserCubit>(
          create: (BuildContext context) => getIt<OtherUserCubit>(),
        ),

        BlocProvider<ListBarterModelCurrentUserCubit>(
          create: (BuildContext context) =>
              getIt<ListBarterModelCurrentUserCubit>(),
        ),

        BlocProvider<LikesCurrentUserCubit>(
          create: (BuildContext context) => getIt<LikesCurrentUserCubit>(),
        ),

        BlocProvider<SingleBarterItemOtherUserCubit>(
          create: (BuildContext context) =>
              getIt<SingleBarterItemOtherUserCubit>(),
        ),

        BlocProvider<MakeOfferCubit>(
          create: (BuildContext context) => getIt<MakeOfferCubit>(),
        ),

        BlocProvider<SignCubit>(
          create: (BuildContext context) => getIt<SignCubit>(),
        ),

        /// start the authorization check
        BlocProvider<AuthCubit>(
            create: (BuildContext context) => getIt<AuthCubit>()),

        BlocProvider<AppleSignCubit>(
          create: (BuildContext context) => getIt<AppleSignCubit>(),
        ),

        BlocProvider<LocationCubit>(
          create: (BuildContext context) => getIt<LocationCubit>(),
        ),

        BlocProvider<SearchConfigCubit>(
          create: (BuildContext context) => getIt<SearchConfigCubit>(),
        ),

        BlocProvider<NavigationCubit>(
          create: (BuildContext context) => getIt<NavigationCubit>(),
        ),

        BlocProvider<RemoteConfigCubit>(
          create: (BuildContext context) => getIt<RemoteConfigCubit>(),
        ),

        BlocProvider<SearchCubit>(
          create: (BuildContext context) => getIt<SearchCubit>(),
        ),

        BlocProvider<PostBarterCubit>(
          create: (BuildContext context) => getIt<PostBarterCubit>(),
        ),

        BlocProvider<DeleteBarterModelCurrentUserCubit>(
          create: (BuildContext context) =>
              getIt<DeleteBarterModelCurrentUserCubit>(),
        ),

        /// CUBITS REGISTRATION END

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
