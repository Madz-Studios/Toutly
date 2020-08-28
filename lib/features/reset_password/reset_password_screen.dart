import 'dart:io';

import 'package:Toutly/core/cubits/password_reset/password_reset_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/buttons/back_or_close_button.dart';
import 'package:Toutly/shared/widgets/text_fields/sign_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  final _passwordResetCubit = getIt<PasswordResetCubit>();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_onEmailChanged);
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  bool get isPopulated => _emailController.text.isNotEmpty;

  void _onEmailChanged() {
    _passwordResetCubit.emailChanged(_emailController.text);
  }

  void _onFormSubmitted() {
    if (isPopulated) {
      _passwordResetCubit.sendPasswordResetPressed(_emailController.text);
    }
  }

  bool isSignInButtonEnabled(PasswordResetState state) {
    return state.isEmailValid && isPopulated && !state.isSubmitting;
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Reset Password',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        leading: BackOrCloseButton(
          buttonColor: kPrimaryColor,
          isDialog: true,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocConsumer<PasswordResetCubit, PasswordResetState>(
        listener: (context, state) {
          if (state.isFailure) {
            Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
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
          if (state.isSuccess) {
            if (Platform.isIOS) {
              _showCupertinoDialog(context);
            } else {
              _showMaterialDialog(context);
            }
          }
        },
        builder: (_, state) {
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              // Touch and fold the keyboard
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: appSizeConfig.blockSizeHorizontal * 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Enter your email. We\'ll send you instructions to reset your password.',
                  ),
                  SizedBox(
                    height: appSizeConfig.safeBlockVertical * 1.5,
                  ),
                  SignTextFormField(
                    controller: _emailController,
                    textInputType: TextInputType.emailAddress,
                    validator: (_) {
                      return !state.isEmailValid ? 'Invalid Email' : null;
                    },
                    hintText: "Email",
                    obscureText: false,
                  ),
                  SizedBox(
                    height: appSizeConfig.safeBlockVertical * 1.5,
                  ),
                  ActionButton(
                    title: 'Request Password Reset',
                    onPressed:
                        isSignInButtonEnabled(state) ? _onFormSubmitted : null,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _showMaterialDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Reset password successful.'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Please check your email for the instructions.'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext subContext) {
        return CupertinoAlertDialog(
          title: Text('Reset password successful.'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
