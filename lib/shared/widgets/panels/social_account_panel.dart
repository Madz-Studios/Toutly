import 'package:Toutly/core/cubits/apple_sign/apple_sign_cubit.dart';
import 'package:Toutly/core/cubits/sign/sign_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/social_sign_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SocialAccountPanel extends StatelessWidget {
  final _signCubit = getIt<SignCubit>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: appSizeConfig.blockSizeHorizontal * 5),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: appSizeConfig.blockSizeHorizontal * 5,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0XFFCACACA),
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: appSizeConfig.blockSizeHorizontal * 5,
                ),
                Text(
                  'OR',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: appSizeConfig.blockSizeHorizontal * 5,
                ),
                Expanded(
                  child: Container(
                    width: appSizeConfig.blockSizeHorizontal * 5,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0XFFCACACA),
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 2.5,
            ),
            Text(
              'Use an existing account',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
                color: Color(0XFF888888),
              ),
            ),
            SizedBox(
              height: appSizeConfig.blockSizeVertical * 2.5,
            ),
            BlocBuilder<AppleSignCubit, AppleSignState>(builder: (_, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Spacer(
                    flex: state.isAppleSignInAvailable ? 1 : 2,
                  ),
                  SocialSignButton(
                    onPressed: () {
                      _signCubit.signInWithFacebookPressed();
                    },
                    icon: Icon(
                      Ionicons.logo_facebook,
                      color: Color(0XFF0D8CF1),
                      size: appSizeConfig.blockSizeVertical * 5,
                    ),
                  ),
                  Spacer(),
                  SocialSignButton(
                    onPressed: () {
                      _signCubit.signInWithGooglePressed();
                    },
                    icon: Icon(
                      Ionicons.logo_google,
                      color: Color(0XFFD44940),
                      size: appSizeConfig.blockSizeVertical * 5,
                    ),
                  ),
                  Spacer(),
                  Visibility(
                    visible: state.isAppleSignInAvailable,
                    child: SocialSignButton(
                      onPressed: () {
                        _signCubit.signInWithApplePressed();
                      },
                      icon: Icon(
                        Ionicons.logo_apple,
                        color: Colors.black,
                        size: appSizeConfig.blockSizeVertical * 5,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
