import 'dart:io';

import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/location/location_cubit.dart';
import 'package:Toutly/core/cubits/sign/sign_cubit.dart';
import 'package:Toutly/core/cubits/user/current_user/current_user_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/core/models/user/user_model.dart';
import 'package:Toutly/features/signin/screen/modal_signin_screen.dart';
import 'package:Toutly/features/signup/widgets/signup_form.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/panels/social_account_panel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ModalSignUpScreen extends StatelessWidget {
  final _authCubit = getIt<AuthCubit>();
  final _currentUserCubit = getIt<CurrentUserCubit>();
  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (_, locationState) {
        return BlocConsumer<SignCubit, SignState>(
          listener: (_, signState) async {
            if (signState.isSuccess) {
              _authCubit.signedIn();

              UserModel currentUser =
                  await _currentUserCubit.getCurrentUserModel();

              ///update current user using the values of location
              String address = "";
              String subLocality = "${locationState.placeMark.subLocality}";
              String locality = "${locationState.placeMark.locality}";

              if (subLocality.isNotEmpty) {
                address = address + subLocality + ", ";
              }
              if (locality.isNotEmpty) {
                address = address + locality;
              }

              currentUser.address = address;

              currentUser.geoLocation = locationState.geoPoint;

              _currentUserCubit.updateCurrentLoggedInUser(
                  currentUser: currentUser);

              Navigator.pop(context);

              if (Platform.isIOS) {
                _showCupertinoDialog(
                    context,
                    'Account created, you can fully use all the features of the app. Thank you!',
                    kPrimaryColor);
              } else {
                _showMaterialDialog(
                    context,
                    'Account created, you can fully use all the features of the app. Thank you!',
                    kPrimaryColor);
              }
            }

            if (signState.isFailure) {
              if (Platform.isIOS) {
                _showCupertinoDialog(
                    context, signState.info, kSecondaryRedAccentColor);
              } else {
                _showMaterialDialog(
                    context, signState.info, kSecondaryRedAccentColor);
              }
            }
          },
          builder: (_, signState) {
            if (signState.isSubmitting) {
              if (Platform.isIOS) {
                return Container(
                  height: MediaQuery.of(context).copyWith().size.height * 0.75,
                  child: CupertinoActivityIndicator(),
                );
              } else {
                return Container(
                  height: MediaQuery.of(context).copyWith().size.height * 0.75,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
            }
            return SafeArea(
              child: Container(
                height: MediaQuery.of(context).copyWith().size.height * 0.75,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Create an Account',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: appSizeConfig.safeBlockVertical * 2.5,
                      ),
                      SignUpForm(
                        isAnonymous: true,
                      ),
                      SizedBox(
                        height: appSizeConfig.safeBlockVertical * 5,
                      ),
                      SocialAccountPanel(
                        isAnonymous: true,
                      ),
                      SizedBox(
                        height: appSizeConfig.safeBlockVertical * 2.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Already have an account? ",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0,
                              color: Color(0XFFA4A4A4),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              showModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.white,
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                builder: (BuildContext bc) {
                                  return ModalSignInScreen();
                                },
                              );
                            },
                            child: Text(
                              "Sign in",
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
            );
          },
        );
      },
    );
  }

  void _showMaterialDialog(BuildContext mainContext, String info, Color color) {
    showDialog(
      barrierDismissible: true,
      context: mainContext,
      builder: (BuildContext subContext) {
        return AlertDialog(
          title: Text(
            "$info",
            style: TextStyle(
              color: color,
            ),
          ),
        );
      },
    );
  }

  void _showCupertinoDialog(
      BuildContext mainContext, String info, Color color) {
    showDialog(
      barrierDismissible: true,
      context: mainContext,
      builder: (BuildContext subContext) {
        return CupertinoAlertDialog(
          title: Text(
            "$info",
            style: TextStyle(
              color: color,
            ),
          ),
        );
      },
    );
  }
}
