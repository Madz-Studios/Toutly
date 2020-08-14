import 'package:Toutly/features/signin/widgets/signin_form.dart';
import 'package:Toutly/features/signup/screen/signup_screen.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/panels/social_account_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: appSizeConfig.blockSizeHorizontal * 5,
              vertical: appSizeConfig.blockSizeHorizontal * 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/logos/toutly_logo.svg',
                  width: appSizeConfig.blockSizeHorizontal * 15,
                  height: appSizeConfig.blockSizeVertical * 15,
                ),
                SizedBox(
                  height: appSizeConfig.safeBlockVertical * 5,
                ),
                Text(
                  'Welcome!',
                  style: TextStyle(
                    fontFamily: 'SFCompactRounded',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(
                  height: appSizeConfig.safeBlockVertical * 1.5,
                ),
                Text(
                  'Sign in to your account!',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: appSizeConfig.safeBlockVertical * 2.5,
                ),
                SignInForm(),
                SizedBox(
                  height: appSizeConfig.safeBlockVertical * 2.5,
                ),
                Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: Color(0XFF098AE8),
                  ),
                ),
                SizedBox(
                  height: appSizeConfig.safeBlockVertical * 2.5,
                ),
                SocialAccountPanel(),
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
                        ///clear forms and reset state.
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
