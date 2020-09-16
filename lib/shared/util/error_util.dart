import 'dart:io';

import 'package:Toutly/core/cubits/navigation/navigation_cubit.dart';
import 'package:Toutly/core/cubits/search/search_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_size_config.dart';

class LoadingOrErrorWidgetUtil extends StatelessWidget {
  final _searchCubit = getIt<SearchCubit>();
  final _navCubit = getIt<NavigationCubit>();

  final String errorString;
  LoadingOrErrorWidgetUtil(this.errorString);
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    if (errorString.isNotEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Error: $errorString',
              style: TextStyle(
                color: kSecondaryRedAccentColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: appSizeConfig.safeBlockVertical * 5),
              child: ActionButton(
                title: 'Retry',
                onPressed: () {
                  _navCubit.goToHomeScreen();
                  _searchCubit.search(
                    searchText: '',
                    category: '',
                    postedWithin: '',
                    range: kDefaultSearchRange, //default
                    isNoLimitRange: kDefaultNoLimitRange,
                  );
                },
              ),
            ),
          ],
        ),
      );
    } else {
      if (Platform.isIOS) {
        return Center(
          child: CupertinoActivityIndicator(),
        );
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    }
  }
}

// class ScaffoldLoadingOrErrorWidgetUtil extends StatelessWidget {
//   final String errorString;
//   ScaffoldLoadingOrErrorWidgetUtil(this.errorString);
//   @override
//   Widget build(BuildContext context) {
//     final appSizeConfig = AppSizeConfig(context);
//     if (errorString.isNotEmpty) {
//       return Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Error: $errorString',
//                 style: TextStyle(
//                   color: kSecondaryRedAccentColor,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     vertical: appSizeConfig.safeBlockVertical * 5),
//                 child: ActionButton(
//                   title: 'Retry',
//                   onPressed: () {
//                     Phoenix.rebirth(context);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     } else {
//       if (Platform.isIOS) {
//         return Scaffold(
//           body: Center(
//             child: CupertinoActivityIndicator(),
//           ),
//         );
//       } else {
//         return Scaffold(
//           body: Center(
//             child: CircularProgressIndicator(),
//           ),
//         );
//       }
//     }
//   }
// }
