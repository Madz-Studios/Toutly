import 'package:Toutly/core/cubits/apple_sign/apple_sign_cubit.dart';
import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/current_user/list/all/all_list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/current_user/list/private/private_list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/current_user/list/public/public_list_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/current_user/single_barter_item/delete/delete_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/current_user/single_barter_item/update/update_barter_model_current_user_cubit.dart';
import 'package:Toutly/core/cubits/barter_item/other_user/single_barter_item_other_user_cubit.dart';
import 'package:Toutly/core/cubits/barter_messages/barter/barter_message_cubit.dart';
import 'package:Toutly/core/cubits/barter_messages/barter/items/barter_items_cubit.dart';
import 'package:Toutly/core/cubits/barter_messages/conversation/conversation_cubit.dart';
import 'package:Toutly/core/cubits/barter_messages/offer/items/offer_items_cubit.dart';
import 'package:Toutly/core/cubits/barter_messages/offer/offer_message_cubit.dart';
import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/make_offer/make_offer_cubit.dart';
import 'package:Toutly/core/cubits/navigation/navigation_cubit.dart';
import 'package:Toutly/core/cubits/notification/notification_cubit.dart';
import 'package:Toutly/core/cubits/password_reset/password_reset_cubit.dart';
import 'package:Toutly/core/cubits/post_barter/post_barter_cubit.dart';
import 'package:Toutly/core/cubits/remote_config/remote_config_cubit.dart';
import 'package:Toutly/core/cubits/search/search_cubit.dart';
import 'package:Toutly/core/cubits/search_config/search_config_cubit.dart';
import 'package:Toutly/core/cubits/sign/sign_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/cubits/user/other_user/other_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/authentication/screen/authentication_screen.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_map_location_picker/generated/i18n.dart'
    as location_picker;
import 'package:google_map_location_picker/generated/i18n.dart';

import 'core/cubits/saved/current_user/saved_barter_items_cubit.dart';
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

        BlocProvider<PublicListBarterModelCurrentUserCubit>(
          create: (BuildContext context) =>
              getIt<PublicListBarterModelCurrentUserCubit>(),
        ),

        BlocProvider<SavedBarterItemCubit>(
          create: (BuildContext context) => getIt<SavedBarterItemCubit>(),
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
          create: (BuildContext context) =>
              getIt<AuthCubit>()..authCheckRequested(),
        ),

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

        BlocProvider<AllListBarterModelCurrentUserCubit>(
          create: (BuildContext context) =>
              getIt<AllListBarterModelCurrentUserCubit>(),
        ),

        BlocProvider<PrivateListBarterModelCurrentUserCubit>(
          create: (BuildContext context) =>
              getIt<PrivateListBarterModelCurrentUserCubit>(),
        ),

        BlocProvider<PublicListBarterModelCurrentUserCubit>(
          create: (BuildContext context) =>
              getIt<PublicListBarterModelCurrentUserCubit>(),
        ),

        BlocProvider<OfferMessageCubit>(
          create: (BuildContext context) => getIt<OfferMessageCubit>(),
        ),

        BlocProvider<BarterMessageCubit>(
          create: (BuildContext context) => getIt<BarterMessageCubit>(),
        ),

        BlocProvider<BarterMessageCubit>(
          create: (BuildContext context) => getIt<BarterMessageCubit>(),
        ),

        BlocProvider<BarterItemsCubit>(
          create: (BuildContext context) => getIt<BarterItemsCubit>(),
        ),

        BlocProvider<BarterItemsCubit>(
          create: (BuildContext context) => getIt<BarterItemsCubit>(),
        ),

        BlocProvider<OfferItemsCubit>(
          create: (BuildContext context) => getIt<OfferItemsCubit>(),
        ),

        BlocProvider<ConversationCubit>(
          create: (BuildContext context) => getIt<ConversationCubit>(),
        ),

        BlocProvider<PasswordResetCubit>(
          create: (BuildContext context) => getIt<PasswordResetCubit>(),
        ),

        BlocProvider<UpdateBarterModelCurrentUserCubit>(
          create: (BuildContext context) =>
              getIt<UpdateBarterModelCurrentUserCubit>(),
        ),

        BlocProvider<NotificationCubit>(
          create: (BuildContext context) => getIt<NotificationCubit>(),
        ),

        /// CUBITS REGISTRATION END
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
