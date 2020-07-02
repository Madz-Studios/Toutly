import 'dart:io';

import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/signup/widgets/signup_form.dart';
import 'package:Toutly/shared/bloc/sign/sign_bloc.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/panels/social_account_panel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  final _signBloc = getIt<SignBloc>();

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: appSizeConfig.blockSizeHorizontal * 5,
                  vertical: appSizeConfig.blockSizeHorizontal * 5,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/logos/toutly_logo.svg',
                      width: appSizeConfig.blockSizeHorizontal * 15,
                      height: appSizeConfig.blockSizeVertical * 15,
                    ),
                    SizedBox(
                      height: appSizeConfig.safeBlockVertical * 2.5,
                    ),
                    Text(
                      'Create an Account',
                      style: TextStyle(
                        fontFamily: 'SFCompactRounded',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 24.0,
                      ),
                    ),
                    SizedBox(
                      height: appSizeConfig.safeBlockVertical * 2.5,
                    ),
                    SignUpForm(),
                    SizedBox(
                      height: appSizeConfig.safeBlockVertical * 5,
                    ),
                    SocialAccountPanel(),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Platform.isIOS ? CupertinoIcons.back : Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
