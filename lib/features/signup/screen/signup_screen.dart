import 'dart:io';

import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/sign/sign_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/signup/widgets/signup_form.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/loading_widget.dart';
import 'package:Toutly/shared/widgets/panels/social_account_panel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  final _authCubit = getIt<AuthCubit>();
  final _globalScaffoldKey = GlobalKey<ScaffoldState>();
  final LoadingWidget _loadingWidget = LoadingWidget();

  @override
  Widget build(BuildContext context) {
    bool isShowDialog = false;
    final appSizeConfig = AppSizeConfig(context);
    return BlocConsumer<SignCubit, SignState>(
      listener: (context, state) {
        if (state.isFailure) {
          _globalScaffoldKey.currentState.showSnackBar(
            SnackBar(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text('${state.info}'),
                  ),
                  Icon(Icons.error),
                ],
              ),
              backgroundColor: kSecondaryRedAccentColor,
            ),
          );
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
          Navigator.of(context).pop();
        }
      },
      builder: (_, signState) {
        return Scaffold(
          key: _globalScaffoldKey,
          body: SafeArea(
            child: Stack(
              children: <Widget>[
                SingleChildScrollView(
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
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                          ),
                          SizedBox(
                            height: appSizeConfig.safeBlockVertical * 2.5,
                          ),
                          SignUpForm(
                            isAnonymous: false,
                          ),
                          SizedBox(
                            height: appSizeConfig.safeBlockVertical * 5,
                          ),
                          SocialAccountPanel(
                            isAnonymous: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Platform.isIOS ? CupertinoIcons.back : Icons.arrow_back,
                  ),
                  color: kPrimaryColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
