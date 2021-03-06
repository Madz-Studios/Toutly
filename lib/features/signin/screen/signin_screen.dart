import 'dart:io';

import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/sign/sign_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/reset_password/reset_password_screen.dart';
import 'package:Toutly/features/signin/widgets/signin_form.dart';
import 'package:Toutly/features/signup/screen/signup_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/loading_widget.dart';
import 'package:Toutly/shared/widgets/panels/social_account_panel.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class SignInScreen extends StatelessWidget {
  final _signCubit = getIt<SignCubit>();
  final _authCubit = getIt<AuthCubit>();
  final LoadingWidget _loadingWidget = LoadingWidget();
  bool isShowDialog = false;
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocConsumer<SignCubit, SignState>(
      listener: (context, state) {
        if (state.isFailure) {
          if (isShowDialog) {
            Navigator.of(context).pop();
            isShowDialog = false;
          }
          Flushbar(
            message: "${state.info}",
            backgroundColor: kSecondaryRedAccentColor,
            duration: Duration(seconds: 2),
          )..show(context);
        }
        if (state.isSubmitting) {
          if (Platform.isIOS) {
            _loadingWidget.showCupertinoDialog(context);
          } else {
            _loadingWidget.showMaterialDialog(context);
          }
          isShowDialog = true;
        }
        if (state.isSuccess) {
          if (isShowDialog) {
            Navigator.of(context).pop();
            isShowDialog = false;
          }
          _authCubit.signedIn();
        }
      },
      builder: (_, signState) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 5,
                  vertical: appSizeConfig.blockSizeHorizontal * 5,
                ),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    // Touch and fold the keyboard
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SvgPicture.asset(
                        'assets/logos/toutly_logo.svg',
                        width: appSizeConfig.safeBlockHorizontal * 15,
                        height: appSizeConfig.safeBlockVertical * 15,
                      ),
                      SizedBox(
                        height: appSizeConfig.safeBlockVertical * 2.5,
                      ),
                      Center(
                        child: Text(
                          'Sign in to your account',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: appSizeConfig.safeBlockVertical * 2.5,
                      ),
                      SignInForm(),
                      SizedBox(
                        height: appSizeConfig.safeBlockVertical * 2.5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return ResetPasswordScreen();
                            }),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              color: Color(0XFF098AE8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: appSizeConfig.safeBlockVertical * 2.5,
                      ),
                      SocialAccountPanel(
                        isAnonymous: false,
                      ),
                      SizedBox(
                        height: appSizeConfig.safeBlockVertical * 2.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0,
                              color: Color(0XFFA4A4A4),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return SignUpScreen();
                                }),
                              );
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: appSizeConfig.safeBlockVertical * 2.5,
                      ),
                      GestureDetector(
                        onTap: () {
                          _signCubit.signInAnonymously();
                        },
                        child: Center(
                          child: Text(
                            'Maybe later?',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              color: Color(0XFF098AE8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
